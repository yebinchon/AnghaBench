
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int i_ino; int i_sb; } ;
struct ext4_iloc {TYPE_1__* bh; } ;
struct TYPE_8__ {scalar_t__ s_journal; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ b_blocknr; } ;


 int EIO ;
 TYPE_5__* EXT4_SB (int ) ;
 int PF_MEMALLOC ;
 scalar_t__ WB_SYNC_ALL ;
 int __ext4_get_inode_loc (struct inode*,struct ext4_iloc*,int ) ;
 scalar_t__ buffer_req (TYPE_1__*) ;
 int buffer_uptodate (TYPE_1__*) ;
 TYPE_2__* current ;
 int dump_stack () ;
 int ext4_error (int ,char*,int ,unsigned long long) ;
 int ext4_force_commit (int ) ;
 scalar_t__ ext4_journal_current_handle () ;
 int jbd_debug (int,char*) ;
 int sync_dirty_buffer (TYPE_1__*) ;

int ext4_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 int err;

 if (current->flags & PF_MEMALLOC)
  return 0;

 if (EXT4_SB(inode->i_sb)->s_journal) {
  if (ext4_journal_current_handle()) {
   jbd_debug(1, "called recursively, non-PF_MEMALLOC!\n");
   dump_stack();
   return -EIO;
  }

  if (wbc->sync_mode != WB_SYNC_ALL)
   return 0;

  err = ext4_force_commit(inode->i_sb);
 } else {
  struct ext4_iloc iloc;

  err = __ext4_get_inode_loc(inode, &iloc, 0);
  if (err)
   return err;
  if (wbc->sync_mode == WB_SYNC_ALL)
   sync_dirty_buffer(iloc.bh);
  if (buffer_req(iloc.bh) && !buffer_uptodate(iloc.bh)) {
   ext4_error(inode->i_sb, "IO error syncing inode, "
       "inode=%lu, block=%llu", inode->i_ino,
       (unsigned long long)iloc.bh->b_blocknr);
   err = -EIO;
  }
 }
 return err;
}
