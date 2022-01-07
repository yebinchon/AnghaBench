
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int flags; int index; struct address_space* mapping; } ;
struct cachefiles_one_read {int op_link; int monitor; struct page* back_page; } ;
struct cachefiles_object {int work_lock; TYPE_2__* backer; } ;
struct address_space {TYPE_3__* a_ops; } ;
struct TYPE_6__ {int (* readpage ) (int *,struct page*) ;} ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int i_ino; struct address_space* i_mapping; } ;


 int EINPROGRESS ;
 int EIO ;
 int ENODATA ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PageError (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,...) ;
 int add_page_wait_queue (struct page*,int *) ;
 struct page* find_get_page (struct address_space*,int ) ;
 int list_del (int *) ;
 int put_page (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int *,struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int cachefiles_read_reissue(struct cachefiles_object *object,
       struct cachefiles_one_read *monitor)
{
 struct address_space *bmapping = object->backer->d_inode->i_mapping;
 struct page *backpage = monitor->back_page, *backpage2;
 int ret;

 _enter("{ino=%lx},{%lx,%lx}",
        object->backer->d_inode->i_ino,
        backpage->index, backpage->flags);


 if (backpage->mapping != bmapping) {
  _leave(" = -ENODATA [mapping]");
  return -ENODATA;
 }

 backpage2 = find_get_page(bmapping, backpage->index);
 if (!backpage2) {
  _leave(" = -ENODATA [gone]");
  return -ENODATA;
 }

 if (backpage != backpage2) {
  put_page(backpage2);
  _leave(" = -ENODATA [different]");
  return -ENODATA;
 }



 put_page(backpage2);

 INIT_LIST_HEAD(&monitor->op_link);
 add_page_wait_queue(backpage, &monitor->monitor);

 if (trylock_page(backpage)) {
  ret = -EIO;
  if (PageError(backpage))
   goto unlock_discard;
  ret = 0;
  if (PageUptodate(backpage))
   goto unlock_discard;

  _debug("reissue read");
  ret = bmapping->a_ops->readpage(((void*)0), backpage);
  if (ret < 0)
   goto unlock_discard;
 }




 if (trylock_page(backpage)) {
  _debug("jumpstart %p {%lx}", backpage, backpage->flags);
  unlock_page(backpage);
 }


 _leave(" = -EINPROGRESS");
 return -EINPROGRESS;

unlock_discard:
 unlock_page(backpage);
 spin_lock_irq(&object->work_lock);
 list_del(&monitor->op_link);
 spin_unlock_irq(&object->work_lock);
 _leave(" = %d", ret);
 return ret;
}
