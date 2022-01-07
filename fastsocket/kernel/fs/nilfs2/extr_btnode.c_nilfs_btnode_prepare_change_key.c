
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; struct buffer_head* newbh; struct buffer_head* bh; } ;
struct inode {scalar_t__ i_blkbits; } ;
struct buffer_head {TYPE_1__* b_page; } ;
struct address_space {int tree_lock; int page_tree; } ;
typedef scalar_t__ __u64 ;
struct TYPE_5__ {scalar_t__ index; } ;


 int BUG_ON (int) ;
 int EEXIST ;
 int GFP_NOFS ;
 struct inode* NILFS_BTNC_I (struct address_space*) ;
 int NILFS_PAGE_BUG (TYPE_1__*,char*,unsigned long long,unsigned long long) ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 int __GFP_HIGHMEM ;
 int invalidate_inode_pages2_range (struct address_space*,scalar_t__,scalar_t__) ;
 scalar_t__ likely (int) ;
 int lock_page (TYPE_1__*) ;
 int nilfs_btnode_get (struct address_space*,scalar_t__,int ,struct buffer_head**,int) ;
 int radix_tree_insert (int *,scalar_t__,TYPE_1__*) ;
 int radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (TYPE_1__*) ;

int nilfs_btnode_prepare_change_key(struct address_space *btnc,
        struct nilfs_btnode_chkey_ctxt *ctxt)
{
 struct buffer_head *obh, *nbh;
 struct inode *inode = NILFS_BTNC_I(btnc);
 __u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;
 int err;

 if (oldkey == newkey)
  return 0;

 obh = ctxt->bh;
 ctxt->newbh = ((void*)0);

 if (inode->i_blkbits == PAGE_CACHE_SHIFT) {
  lock_page(obh->b_page);




retry:
  err = radix_tree_preload(GFP_NOFS & ~__GFP_HIGHMEM);
  if (err)
   goto failed_unlock;

  if (unlikely(oldkey != obh->b_page->index))
   NILFS_PAGE_BUG(obh->b_page,
           "invalid oldkey %lld (newkey=%lld)",
           (unsigned long long)oldkey,
           (unsigned long long)newkey);

  spin_lock_irq(&btnc->tree_lock);
  err = radix_tree_insert(&btnc->page_tree, newkey, obh->b_page);
  spin_unlock_irq(&btnc->tree_lock);






  radix_tree_preload_end();
  if (!err)
   return 0;
  else if (err != -EEXIST)
   goto failed_unlock;

  err = invalidate_inode_pages2_range(btnc, newkey, newkey);
  if (!err)
   goto retry;

  unlock_page(obh->b_page);
 }

 err = nilfs_btnode_get(btnc, newkey, 0, &nbh, 1);
 if (likely(!err)) {
  BUG_ON(nbh == obh);
  ctxt->newbh = nbh;
 }
 return err;

 failed_unlock:
 unlock_page(obh->b_page);
 return err;
}
