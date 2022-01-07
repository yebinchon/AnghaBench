
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_ILOCK_SHIFT ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_SHARED ;
 int XFS_IOLOCK_SHIFT ;
 int XFS_LOCK_INUMORDER ;

__attribute__((used)) static inline int
xfs_lock_inumorder(int lock_mode, int subclass)
{
 if (lock_mode & (XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL))
  lock_mode |= (subclass + XFS_LOCK_INUMORDER) << XFS_IOLOCK_SHIFT;
 if (lock_mode & (XFS_ILOCK_SHARED|XFS_ILOCK_EXCL))
  lock_mode |= (subclass + XFS_LOCK_INUMORDER) << XFS_ILOCK_SHIFT;

 return lock_mode;
}
