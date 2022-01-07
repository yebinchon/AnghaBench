
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
struct xfs_name {int dummy; } ;


 int EIO ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int XFS_ILOCK_SHARED ;
 int XFS_STATS_INC (int ) ;
 int xfs_attr_get_int (TYPE_1__*,struct xfs_name*,unsigned char*,int*,int) ;
 int xfs_attr_name_to_xname (struct xfs_name*,unsigned char const*) ;
 int xfs_ilock (TYPE_1__*,int ) ;
 int xfs_iunlock (TYPE_1__*,int ) ;
 int xs_attr_get ;

int
xfs_attr_get(
 xfs_inode_t *ip,
 const unsigned char *name,
 unsigned char *value,
 int *valuelenp,
 int flags)
{
 int error;
 struct xfs_name xname;

 XFS_STATS_INC(xs_attr_get);

 if (XFS_FORCED_SHUTDOWN(ip->i_mount))
  return(EIO);

 error = xfs_attr_name_to_xname(&xname, name);
 if (error)
  return error;

 xfs_ilock(ip, XFS_ILOCK_SHARED);
 error = xfs_attr_get_int(ip, &xname, value, valuelenp, flags);
 xfs_iunlock(ip, XFS_ILOCK_SHARED);
 return(error);
}
