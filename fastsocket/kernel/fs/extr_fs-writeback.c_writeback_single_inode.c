
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; } ;
struct inode {int i_state; int i_list; int i_count; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int I_CLEAR ;
 int I_DIRTY ;
 unsigned int I_DIRTY_DATASYNC ;
 int I_DIRTY_PAGES ;
 unsigned int I_DIRTY_SYNC ;
 int I_FREEING ;
 int I_SYNC ;
 int I_WILL_FREE ;
 int PAGECACHE_TAG_DIRTY ;
 int WARN_ON (int) ;
 scalar_t__ WB_SYNC_ALL ;
 scalar_t__ atomic_read (int *) ;
 int do_writepages (struct address_space*,struct writeback_control*) ;
 int filemap_fdatawait (struct address_space*) ;
 int inode_in_use ;
 int inode_lock ;
 int inode_sync_complete (struct inode*) ;
 int inode_unused ;
 int inode_wait_for_writeback (struct inode*) ;
 int list_move (int *,int *) ;
 scalar_t__ mapping_tagged (struct address_space*,int ) ;
 int redirty_tail (struct inode*) ;
 int requeue_io (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_inode (struct inode*,struct writeback_control*) ;

__attribute__((used)) static int
writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct address_space *mapping = inode->i_mapping;
 unsigned dirty;
 int ret;

 if (!atomic_read(&inode->i_count))
  WARN_ON(!(inode->i_state & (I_WILL_FREE|I_FREEING)));
 else
  WARN_ON(inode->i_state & I_WILL_FREE);

 if (inode->i_state & I_SYNC) {
  if (wbc->sync_mode != WB_SYNC_ALL) {
   requeue_io(inode);
   return 0;
  }




  inode_wait_for_writeback(inode);
 }

 BUG_ON(inode->i_state & I_SYNC);


 dirty = inode->i_state & I_DIRTY;
 inode->i_state |= I_SYNC;
 inode->i_state &= ~I_DIRTY;

 spin_unlock(&inode_lock);

 ret = do_writepages(mapping, wbc);






 if (wbc->sync_mode == WB_SYNC_ALL) {
  int err = filemap_fdatawait(mapping);
  if (ret == 0)
   ret = err;
 }


 if (dirty & (I_DIRTY_SYNC | I_DIRTY_DATASYNC)) {
  int err = write_inode(inode, wbc);
  if (ret == 0)
   ret = err;
 }

 spin_lock(&inode_lock);
 inode->i_state &= ~I_SYNC;
 if (!(inode->i_state & (I_FREEING | I_CLEAR))) {
  if (mapping_tagged(mapping, PAGECACHE_TAG_DIRTY)) {




   inode->i_state |= I_DIRTY_PAGES;
   if (wbc->nr_to_write <= 0) {



    requeue_io(inode);
   } else {







    redirty_tail(inode);
   }
  } else if (inode->i_state & I_DIRTY) {






   redirty_tail(inode);
  } else if (atomic_read(&inode->i_count)) {



   list_move(&inode->i_list, &inode_in_use);
  } else {



   list_move(&inode->i_list, &inode_unused);
  }
 }
 inode_sync_complete(inode);
 return ret;
}
