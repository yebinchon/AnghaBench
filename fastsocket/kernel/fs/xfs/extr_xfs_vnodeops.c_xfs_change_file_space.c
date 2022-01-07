
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef scalar_t__ xfs_off_t ;
typedef int xfs_mount_t ;
struct TYPE_16__ {int di_mode; int di_flags; } ;
struct TYPE_17__ {TYPE_1__ i_d; int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef scalar_t__ xfs_fsize_t ;
struct TYPE_18__ {int l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
typedef TYPE_3__ xfs_flock64_t ;
struct iattr {scalar_t__ ia_size; int ia_valid; } ;


 int ASSERT (int ) ;
 int ATTR_SIZE ;
 int EINVAL ;
 int S_ISGID ;
 int S_ISREG (int) ;
 int S_ISUID ;
 int S_IXGRP ;
 int XFS_ATTR_DMI ;
 int XFS_ATTR_NOLOCK ;
 int XFS_ATTR_SYNC ;
 int XFS_BMAPI_CONVERT ;
 int XFS_BMAPI_PREALLOC ;
 int XFS_DIFLAG_PREALLOC ;
 int XFS_ERROR (int ) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_IOLOCK_EXCL ;
 scalar_t__ XFS_ISIZE (TYPE_2__*) ;
 scalar_t__ XFS_MAXIOFFSET (int *) ;
 int XFS_TRANS_WRITEID ;
 int XFS_WRITEID_LOG_RES (int *) ;
 int xfs_alloc_file_space (TYPE_2__*,scalar_t__,scalar_t__,int,int) ;
 int xfs_free_file_space (TYPE_2__*,scalar_t__,scalar_t__,int) ;
 int xfs_ilock (TYPE_2__*,int ) ;
 int xfs_iunlock (TYPE_2__*,int ) ;
 int xfs_setattr (TYPE_2__*,struct iattr*,int) ;
 int xfs_tosspages (TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 int * xfs_trans_alloc (int *,int ) ;
 int xfs_trans_cancel (int *,int ) ;
 int xfs_trans_commit (int *,int ) ;
 int xfs_trans_ichgtime (int *,TYPE_2__*,int) ;
 int xfs_trans_ijoin (int *,TYPE_2__*) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;
 int xfs_trans_reserve (int *,int ,int ,int ,int ,int ) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_change_file_space(
 xfs_inode_t *ip,
 int cmd,
 xfs_flock64_t *bf,
 xfs_off_t offset,
 int attr_flags)
{
 xfs_mount_t *mp = ip->i_mount;
 int clrprealloc;
 int error;
 xfs_fsize_t fsize;
 int setprealloc;
 xfs_off_t startoffset;
 xfs_off_t llen;
 xfs_trans_t *tp;
 struct iattr iattr;
 int prealloc_type;

 if (!S_ISREG(ip->i_d.di_mode))
  return XFS_ERROR(EINVAL);

 switch (bf->l_whence) {
 case 0:
  break;
 case 1:
  bf->l_start += offset;
  break;
 case 2:
  bf->l_start += XFS_ISIZE(ip);
  break;
 default:
  return XFS_ERROR(EINVAL);
 }

 llen = bf->l_len > 0 ? bf->l_len - 1 : bf->l_len;

 if ( (bf->l_start < 0)
     || (bf->l_start > XFS_MAXIOFFSET(mp))
     || (bf->l_start + llen < 0)
     || (bf->l_start + llen > XFS_MAXIOFFSET(mp)))
  return XFS_ERROR(EINVAL);

 bf->l_whence = 0;

 startoffset = bf->l_start;
 fsize = XFS_ISIZE(ip);
 setprealloc = clrprealloc = 0;
 prealloc_type = XFS_BMAPI_PREALLOC;

 switch (cmd) {
 case 128:
  prealloc_type |= XFS_BMAPI_CONVERT;
  xfs_tosspages(ip, startoffset, startoffset + bf->l_len, 0);

 case 132:
 case 131:
  error = xfs_alloc_file_space(ip, startoffset, bf->l_len,
      prealloc_type, attr_flags);
  if (error)
   return error;
  setprealloc = 1;
  break;

 case 130:
 case 129:
  if ((error = xfs_free_file_space(ip, startoffset, bf->l_len,
        attr_flags)))
   return error;
  break;

 case 136:
 case 135:
 case 134:
 case 133:
  xfs_ilock(ip, XFS_IOLOCK_EXCL);
  if (startoffset > fsize) {
   error = xfs_alloc_file_space(ip, fsize,
     startoffset - fsize, 0,
     attr_flags | XFS_ATTR_NOLOCK);
   if (error) {
    xfs_iunlock(ip, XFS_IOLOCK_EXCL);
    break;
   }
  }

  iattr.ia_valid = ATTR_SIZE;
  iattr.ia_size = startoffset;

  error = xfs_setattr(ip, &iattr, attr_flags | XFS_ATTR_NOLOCK);
  xfs_iunlock(ip, XFS_IOLOCK_EXCL);

  if (error)
   return error;

  clrprealloc = 1;
  break;

 default:
  ASSERT(0);
  return XFS_ERROR(EINVAL);
 }




 tp = xfs_trans_alloc(mp, XFS_TRANS_WRITEID);

 if ((error = xfs_trans_reserve(tp, 0, XFS_WRITEID_LOG_RES(mp),
          0, 0, 0))) {

  xfs_trans_cancel(tp, 0);
  return error;
 }

 xfs_ilock(ip, XFS_ILOCK_EXCL);

 xfs_trans_ijoin(tp, ip);

 if ((attr_flags & XFS_ATTR_DMI) == 0) {
  ip->i_d.di_mode &= ~S_ISUID;
  if (ip->i_d.di_mode & S_IXGRP)
   ip->i_d.di_mode &= ~S_ISGID;

  xfs_trans_ichgtime(tp, ip, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
 }
 if (setprealloc)
  ip->i_d.di_flags |= XFS_DIFLAG_PREALLOC;
 else if (clrprealloc)
  ip->i_d.di_flags &= ~XFS_DIFLAG_PREALLOC;

 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
 if (attr_flags & XFS_ATTR_SYNC)
  xfs_trans_set_sync(tp);

 error = xfs_trans_commit(tp, 0);

 xfs_iunlock(ip, XFS_ILOCK_EXCL);

 return error;
}
