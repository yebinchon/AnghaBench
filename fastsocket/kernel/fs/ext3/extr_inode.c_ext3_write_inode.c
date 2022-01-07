
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int flags; } ;


 int EIO ;
 int PF_MEMALLOC ;
 scalar_t__ WB_SYNC_ALL ;
 TYPE_1__* current ;
 int dump_stack () ;
 int ext3_force_commit (int ) ;
 scalar_t__ ext3_journal_current_handle () ;
 int jbd_debug (int,char*) ;

int ext3_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 if (current->flags & PF_MEMALLOC)
  return 0;

 if (ext3_journal_current_handle()) {
  jbd_debug(1, "called recursively, non-PF_MEMALLOC!\n");
  dump_stack();
  return -EIO;
 }

 if (wbc->sync_mode != WB_SYNC_ALL)
  return 0;

 return ext3_force_commit(inode->i_sb);
}
