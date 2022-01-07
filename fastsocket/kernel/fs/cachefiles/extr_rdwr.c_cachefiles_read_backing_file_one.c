
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pagevec {int dummy; } ;
struct page {int flags; int index; } ;
struct fscache_retrieval {int dummy; } ;
struct TYPE_9__ {struct page* private; } ;
struct cachefiles_one_read {int op; TYPE_4__ monitor; struct page* back_page; struct page* netfs_page; } ;
struct cachefiles_object {TYPE_2__* backer; } ;
struct address_space {TYPE_3__* a_ops; } ;
struct TYPE_8__ {int (* readpage ) (int *,struct page*) ;} ;
struct TYPE_7__ {TYPE_1__* d_inode; } ;
struct TYPE_6__ {struct address_space* i_mapping; } ;


 int EEXIST ;
 int ENOBUFS ;
 int ENOMEM ;
 scalar_t__ PageError (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int __GFP_COLD ;
 struct page* __page_cache_alloc (int) ;
 int __pagevec_lru_add_file (struct pagevec*) ;
 int _debug (char*,...) ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int add_page_wait_queue (struct page*,TYPE_4__*) ;
 int add_to_page_cache (struct page*,struct address_space*,int ,int) ;
 int cachefiles_gfp ;
 int cachefiles_io_error_obj (struct cachefiles_object*,char*) ;
 int cachefiles_read_waiter ;
 int copy_highpage (struct page*,struct page*) ;
 struct page* find_get_page (struct address_space*,int ) ;
 int fscache_end_io (struct fscache_retrieval*,struct page*,int ) ;
 int fscache_get_retrieval (struct fscache_retrieval*) ;
 int fscache_mark_page_cached (struct fscache_retrieval*,struct page*,int) ;
 int fscache_put_retrieval (int ) ;
 int fscache_retrieval_complete (struct fscache_retrieval*,int) ;
 int init_waitqueue_func_entry (TYPE_4__*,int ) ;
 int kfree (struct cachefiles_one_read*) ;
 struct cachefiles_one_read* kzalloc (int,int) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_count (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int pagevec_reinit (struct pagevec*) ;
 int stub1 (int *,struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int cachefiles_read_backing_file_one(struct cachefiles_object *object,
         struct fscache_retrieval *op,
         struct page *netpage,
         struct pagevec *pagevec)
{
 struct cachefiles_one_read *monitor;
 struct address_space *bmapping;
 struct page *newpage, *backpage;
 int ret;

 _enter("");

 pagevec_reinit(pagevec);

 _debug("read back %p{%lu,%d}",
        netpage, netpage->index, page_count(netpage));

 monitor = kzalloc(sizeof(*monitor), cachefiles_gfp);
 if (!monitor)
  goto nomem;

 monitor->netfs_page = netpage;
 monitor->op = fscache_get_retrieval(op);

 init_waitqueue_func_entry(&monitor->monitor, cachefiles_read_waiter);


 bmapping = object->backer->d_inode->i_mapping;
 newpage = ((void*)0);

 for (;;) {
  backpage = find_get_page(bmapping, netpage->index);
  if (backpage)
   goto backing_page_already_present;

  if (!newpage) {
   newpage = __page_cache_alloc(cachefiles_gfp |
           __GFP_COLD);
   if (!newpage)
    goto nomem_monitor;
  }

  ret = add_to_page_cache(newpage, bmapping,
     netpage->index, cachefiles_gfp);
  if (ret == 0)
   goto installed_new_backing_page;
  if (ret != -EEXIST)
   goto nomem_page;
 }



installed_new_backing_page:
 _debug("- new %p", newpage);

 backpage = newpage;
 newpage = ((void*)0);

 page_cache_get(backpage);
 pagevec_add(pagevec, backpage);
 __pagevec_lru_add_file(pagevec);

read_backing_page:
 ret = bmapping->a_ops->readpage(((void*)0), backpage);
 if (ret < 0)
  goto read_error;


monitor_backing_page:
 _debug("- monitor add");


 page_cache_get(monitor->netfs_page);
 page_cache_get(backpage);
 monitor->back_page = backpage;
 monitor->monitor.private = backpage;
 add_page_wait_queue(backpage, &monitor->monitor);
 monitor = ((void*)0);




 if (trylock_page(backpage)) {
  _debug("jumpstart %p {%lx}", backpage, backpage->flags);
  unlock_page(backpage);
 }
 goto success;



backing_page_already_present:
 _debug("- present");

 if (newpage) {
  page_cache_release(newpage);
  newpage = ((void*)0);
 }

 if (PageError(backpage))
  goto io_error;

 if (PageUptodate(backpage))
  goto backing_page_already_uptodate;

 if (!trylock_page(backpage))
  goto monitor_backing_page;
 _debug("read %p {%lx}", backpage, backpage->flags);
 goto read_backing_page;



backing_page_already_uptodate:
 _debug("- uptodate");

 fscache_mark_page_cached(op, netpage, 1);

 copy_highpage(netpage, backpage);
 fscache_end_io(op, netpage, 0);
 fscache_retrieval_complete(op, 1);

success:
 _debug("success");
 ret = 0;

out:
 if (backpage)
  page_cache_release(backpage);
 if (monitor) {
  fscache_put_retrieval(monitor->op);
  kfree(monitor);
 }
 _leave(" = %d", ret);
 return ret;

read_error:
 _debug("read error %d", ret);
 if (ret == -ENOMEM) {
  fscache_retrieval_complete(op, 1);
  goto out;
 }
io_error:
 cachefiles_io_error_obj(object, "Page read error on backing file");
 fscache_retrieval_complete(op, 1);
 ret = -ENOBUFS;
 goto out;

nomem_page:
 page_cache_release(newpage);
nomem_monitor:
 fscache_put_retrieval(monitor->op);
 kfree(monitor);
nomem:
 fscache_retrieval_complete(op, 1);
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
