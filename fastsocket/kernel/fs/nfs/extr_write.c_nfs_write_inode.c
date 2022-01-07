
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_background; scalar_t__ nonblocking; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int NFS_INO_LAYOUTCOMMIT ;
 scalar_t__ WB_SYNC_NONE ;
 int nfs_commit_unstable_pages (struct inode*,struct writeback_control*) ;
 int pnfs_layoutcommit_inode (struct inode*,int) ;
 scalar_t__ test_bit (int ,int *) ;

int nfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 int ret;

 ret = nfs_commit_unstable_pages(inode, wbc);
 if (ret >= 0 && test_bit(NFS_INO_LAYOUTCOMMIT, &NFS_I(inode)->flags)) {
  int status;
  bool sync = 1;

  if (wbc->sync_mode == WB_SYNC_NONE || wbc->nonblocking ||
      wbc->for_background)
   sync = 0;

  status = pnfs_layoutcommit_inode(inode, sync);
  if (status < 0)
   return status;
 }
 return ret;
}
