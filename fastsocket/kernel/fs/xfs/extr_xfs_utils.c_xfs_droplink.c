
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_8__ {scalar_t__ di_nlink; } ;
struct TYPE_9__ {TYPE_1__ i_d; } ;
typedef TYPE_2__ xfs_inode_t ;


 int ASSERT (int) ;
 int VFS_I (TYPE_2__*) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ILOG_CORE ;
 int drop_nlink (int ) ;
 int xfs_iunlink (int *,TYPE_2__*) ;
 int xfs_trans_ichgtime (int *,TYPE_2__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;

int
xfs_droplink(
 xfs_trans_t *tp,
 xfs_inode_t *ip)
{
 int error;

 xfs_trans_ichgtime(tp, ip, XFS_ICHGTIME_CHG);

 ASSERT (ip->i_d.di_nlink > 0);
 ip->i_d.di_nlink--;
 drop_nlink(VFS_I(ip));
 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);

 error = 0;
 if (ip->i_d.di_nlink == 0) {






  error = xfs_iunlink(tp, ip);
 }
 return error;
}
