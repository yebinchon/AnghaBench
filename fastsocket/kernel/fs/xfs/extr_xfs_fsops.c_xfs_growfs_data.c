
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_growlock; } ;
typedef TYPE_1__ xfs_mount_t ;
typedef int xfs_growfs_data_t ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int EWOULDBLOCK ;
 int XFS_ERROR (int ) ;
 int capable (int ) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int xfs_growfs_data_private (TYPE_1__*,int *) ;

int
xfs_growfs_data(
 xfs_mount_t *mp,
 xfs_growfs_data_t *in)
{
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return XFS_ERROR(EPERM);
 if (!mutex_trylock(&mp->m_growlock))
  return XFS_ERROR(EWOULDBLOCK);
 error = xfs_growfs_data_private(mp, in);
 mutex_unlock(&mp->m_growlock);
 return error;
}
