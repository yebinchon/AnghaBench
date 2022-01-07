
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; TYPE_1__* bh; struct buffer_head* newbh; } ;
struct buffer_head {int dummy; } ;
struct address_space {int tree_lock; int page_tree; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int b_page; } ;


 int brelse (struct buffer_head*) ;
 int radix_tree_delete (int *,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int unlock_page (int ) ;

void nilfs_btnode_abort_change_key(struct address_space *btnc,
       struct nilfs_btnode_chkey_ctxt *ctxt)
{
 struct buffer_head *nbh = ctxt->newbh;
 __u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;

 if (oldkey == newkey)
  return;

 if (nbh == ((void*)0)) {
  spin_lock_irq(&btnc->tree_lock);
  radix_tree_delete(&btnc->page_tree, newkey);
  spin_unlock_irq(&btnc->tree_lock);
  unlock_page(ctxt->bh->b_page);
 } else
  brelse(nbh);
}
