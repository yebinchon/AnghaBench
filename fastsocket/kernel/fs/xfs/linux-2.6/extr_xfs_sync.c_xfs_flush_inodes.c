
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct inode {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 struct inode* VFS_I (TYPE_1__*) ;
 int XFS_LOG_SYNC ;
 int completion ;
 int igrab (struct inode*) ;
 int wait_for_completion (int *) ;
 int xfs_flush_inodes_work ;
 int xfs_log_force (int ,int ) ;
 int xfs_syncd_queue_work (int ,struct inode*,int ,int *) ;

void
xfs_flush_inodes(
 xfs_inode_t *ip)
{
 struct inode *inode = VFS_I(ip);
 DECLARE_COMPLETION_ONSTACK(completion);

 igrab(inode);
 xfs_syncd_queue_work(ip->i_mount, inode, xfs_flush_inodes_work, &completion);
 wait_for_completion(&completion);
 xfs_log_force(ip->i_mount, XFS_LOG_SYNC);
}
