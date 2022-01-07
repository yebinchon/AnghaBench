
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_flock64_t ;
struct xfs_inode {TYPE_1__* i_mount; } ;
struct inode {int i_flags; int i_mode; } ;
struct file {int f_mode; int f_flags; int f_pos; } ;
struct TYPE_2__ {int m_sb; } ;


 int CAP_SYS_ADMIN ;
 int EBADF ;
 int EINVAL ;
 int EPERM ;
 int FMODE_WRITE ;
 int IO_INVIS ;
 int O_NDELAY ;
 int O_NONBLOCK ;
 int O_SYNC ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 int S_ISREG (int ) ;
 int XFS_ATTR_DMI ;
 int XFS_ATTR_NONBLOCK ;
 int XFS_ATTR_SYNC ;
 int XFS_ERROR (int ) ;
 int capable (int ) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 int xfs_change_file_space (struct xfs_inode*,unsigned int,int *,int ,int) ;
 int xfs_sb_version_hasextflgbit (int *) ;

int
xfs_ioc_space(
 struct xfs_inode *ip,
 struct inode *inode,
 struct file *filp,
 int ioflags,
 unsigned int cmd,
 xfs_flock64_t *bf)
{
 int attr_flags = 0;
 int error;





 if (!xfs_sb_version_hasextflgbit(&ip->i_mount->m_sb) &&
     !capable(CAP_SYS_ADMIN))
  return -XFS_ERROR(EPERM);

 if (inode->i_flags & (S_IMMUTABLE|S_APPEND))
  return -XFS_ERROR(EPERM);

 if (!(filp->f_mode & FMODE_WRITE))
  return -XFS_ERROR(EBADF);

 if (!S_ISREG(inode->i_mode))
  return -XFS_ERROR(EINVAL);

 if (filp->f_flags & (O_NDELAY|O_NONBLOCK))
  attr_flags |= XFS_ATTR_NONBLOCK;

 if (filp->f_flags & O_SYNC)
  attr_flags |= XFS_ATTR_SYNC;

 if (ioflags & IO_INVIS)
  attr_flags |= XFS_ATTR_DMI;

 error = mnt_want_write_file(filp);
 if (error)
  return error;
 error = xfs_change_file_space(ip, cmd, bf, filp->f_pos, attr_flags);
 mnt_drop_write_file(filp);
 return -error;
}
