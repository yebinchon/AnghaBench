
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; struct buffer_head* bh; struct buffer_head* newbh; } ;
struct buffer_head {scalar_t__ b_blocknr; struct page* b_page; } ;
struct address_space {int tree_lock; int page_tree; } ;
typedef scalar_t__ __u64 ;


 int NILFS_PAGE_BUG (struct page*,char*,unsigned long long,unsigned long long) ;
 int PAGECACHE_TAG_DIRTY ;
 int nilfs_btnode_delete (struct buffer_head*) ;
 int nilfs_btnode_mark_dirty (struct buffer_head*) ;
 int nilfs_copy_buffer (struct buffer_head*,struct buffer_head*) ;
 int radix_tree_delete (int *,scalar_t__) ;
 int radix_tree_tag_set (int *,scalar_t__,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

void nilfs_btnode_commit_change_key(struct address_space *btnc,
        struct nilfs_btnode_chkey_ctxt *ctxt)
{
 struct buffer_head *obh = ctxt->bh, *nbh = ctxt->newbh;
 __u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;
 struct page *opage;

 if (oldkey == newkey)
  return;

 if (nbh == ((void*)0)) {
  opage = obh->b_page;
  if (unlikely(oldkey != opage->index))
   NILFS_PAGE_BUG(opage,
           "invalid oldkey %lld (newkey=%lld)",
           (unsigned long long)oldkey,
           (unsigned long long)newkey);
  nilfs_btnode_mark_dirty(obh);

  spin_lock_irq(&btnc->tree_lock);
  radix_tree_delete(&btnc->page_tree, oldkey);
  radix_tree_tag_set(&btnc->page_tree, newkey,
       PAGECACHE_TAG_DIRTY);
  spin_unlock_irq(&btnc->tree_lock);

  opage->index = obh->b_blocknr = newkey;
  unlock_page(opage);
 } else {
  nilfs_copy_buffer(nbh, obh);
  nilfs_btnode_mark_dirty(nbh);

  nbh->b_blocknr = newkey;
  ctxt->bh = nbh;
  nilfs_btnode_delete(obh);
 }
}
