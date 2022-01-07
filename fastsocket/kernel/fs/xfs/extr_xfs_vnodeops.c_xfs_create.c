
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int di_flags; scalar_t__ di_nlink; } ;
struct xfs_inode {int i_ino; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
typedef struct xfs_inode xfs_inode_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_dev_t ;
typedef int xfs_bmap_free_t ;
typedef scalar_t__ uint ;
struct xfs_trans {int dummy; } ;
struct xfs_name {int len; } ;
struct xfs_mount {int m_flags; } ;
struct xfs_dquot {int dummy; } ;
typedef int prid_t ;
typedef int mode_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EIO ;
 int EMLINK ;
 int ENOSPC ;
 int IRELE (struct xfs_inode*) ;
 int S_ISDIR (int ) ;
 scalar_t__ XFS_CREATE_LOG_COUNT ;
 scalar_t__ XFS_CREATE_LOG_RES (struct xfs_mount*) ;
 scalar_t__ XFS_CREATE_SPACE_RES (struct xfs_mount*,int ) ;
 int XFS_DIFLAG_PROJINHERIT ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (struct xfs_mount*) ;
 scalar_t__ XFS_IALLOC_SPACE_RES (struct xfs_mount*) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_PARENT ;
 int XFS_ILOG_CORE ;
 scalar_t__ XFS_MAXLINK ;
 scalar_t__ XFS_MKDIR_LOG_COUNT ;
 scalar_t__ XFS_MKDIR_LOG_RES (struct xfs_mount*) ;
 scalar_t__ XFS_MKDIR_SPACE_RES (struct xfs_mount*,int ) ;
 int XFS_MOUNT_DIRSYNC ;
 int XFS_MOUNT_WSYNC ;
 int XFS_PROJID_DEFAULT ;
 int XFS_QMOPT_INHERIT ;
 int XFS_QMOPT_QUOTALL ;
 scalar_t__ XFS_TRANS_ABORT ;
 int XFS_TRANS_CREATE ;
 int XFS_TRANS_MKDIR ;
 int XFS_TRANS_PERM_LOG_RES ;
 scalar_t__ XFS_TRANS_RELEASE_LOG_RES ;
 int current_fsgid () ;
 int current_fsuid () ;
 int trace_xfs_create (struct xfs_inode*,struct xfs_name*) ;
 int xfs_bmap_cancel (int *) ;
 int xfs_bmap_finish (struct xfs_trans**,int *,int*) ;
 int xfs_bmap_init (int *,int *) ;
 int xfs_bumplink (struct xfs_trans*,struct xfs_inode*) ;
 int xfs_dir_canenter (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,scalar_t__) ;
 int xfs_dir_createname (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int ,int *,int *,scalar_t__) ;
 int xfs_dir_ialloc (struct xfs_trans**,struct xfs_inode*,int ,int,int ,int ,int,struct xfs_inode**,int*) ;
 int xfs_dir_init (struct xfs_trans*,struct xfs_inode*,struct xfs_inode*) ;
 int xfs_flush_inodes (struct xfs_inode*) ;
 int xfs_get_projid (struct xfs_inode*) ;
 int xfs_ilock (struct xfs_inode*,int) ;
 int xfs_iunlock (struct xfs_inode*,int) ;
 int xfs_qm_dqrele (struct xfs_dquot*) ;
 int xfs_qm_vop_create_dqattach (struct xfs_trans*,struct xfs_inode*,struct xfs_dquot*,struct xfs_dquot*) ;
 int xfs_qm_vop_dqalloc (struct xfs_inode*,int ,int ,int ,int,struct xfs_dquot**,struct xfs_dquot**) ;
 struct xfs_trans* xfs_trans_alloc (struct xfs_mount*,int ) ;
 int xfs_trans_cancel (struct xfs_trans*,scalar_t__) ;
 int xfs_trans_commit (struct xfs_trans*,scalar_t__) ;
 int xfs_trans_ichgtime (struct xfs_trans*,struct xfs_inode*,int) ;
 int xfs_trans_ijoin_ref (struct xfs_trans*,struct xfs_inode*,int) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_reserve (struct xfs_trans*,scalar_t__,scalar_t__,int ,int ,scalar_t__) ;
 int xfs_trans_reserve_quota (struct xfs_trans*,struct xfs_mount*,struct xfs_dquot*,struct xfs_dquot*,scalar_t__,int,int ) ;
 int xfs_trans_set_sync (struct xfs_trans*) ;

int
xfs_create(
 xfs_inode_t *dp,
 struct xfs_name *name,
 mode_t mode,
 xfs_dev_t rdev,
 xfs_inode_t **ipp)
{
 int is_dir = S_ISDIR(mode);
 struct xfs_mount *mp = dp->i_mount;
 struct xfs_inode *ip = ((void*)0);
 struct xfs_trans *tp = ((void*)0);
 int error;
 xfs_bmap_free_t free_list;
 xfs_fsblock_t first_block;
 boolean_t unlock_dp_on_error = B_FALSE;
 uint cancel_flags;
 int committed;
 prid_t prid;
 struct xfs_dquot *udqp = ((void*)0);
 struct xfs_dquot *gdqp = ((void*)0);
 uint resblks;
 uint log_res;
 uint log_count;

 trace_xfs_create(dp, name);

 if (XFS_FORCED_SHUTDOWN(mp))
  return XFS_ERROR(EIO);

 if (dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT)
  prid = xfs_get_projid(dp);
 else
  prid = XFS_PROJID_DEFAULT;




 error = xfs_qm_vop_dqalloc(dp, current_fsuid(), current_fsgid(), prid,
   XFS_QMOPT_QUOTALL | XFS_QMOPT_INHERIT, &udqp, &gdqp);
 if (error)
  return error;

 if (is_dir) {
  rdev = 0;
  resblks = XFS_MKDIR_SPACE_RES(mp, name->len);
  log_res = XFS_MKDIR_LOG_RES(mp);
  log_count = XFS_MKDIR_LOG_COUNT;
  tp = xfs_trans_alloc(mp, XFS_TRANS_MKDIR);
 } else {
  resblks = XFS_CREATE_SPACE_RES(mp, name->len);
  log_res = XFS_CREATE_LOG_RES(mp);
  log_count = XFS_CREATE_LOG_COUNT;
  tp = xfs_trans_alloc(mp, XFS_TRANS_CREATE);
 }

 cancel_flags = XFS_TRANS_RELEASE_LOG_RES;







 error = xfs_trans_reserve(tp, resblks, log_res, 0,
   XFS_TRANS_PERM_LOG_RES, log_count);
 if (error == ENOSPC) {

  xfs_flush_inodes(dp);
  error = xfs_trans_reserve(tp, resblks, log_res, 0,
    XFS_TRANS_PERM_LOG_RES, log_count);
 }
 if (error == ENOSPC) {

  resblks = 0;
  error = xfs_trans_reserve(tp, 0, log_res, 0,
    XFS_TRANS_PERM_LOG_RES, log_count);
 }
 if (error) {
  cancel_flags = 0;
  goto out_trans_cancel;
 }

 xfs_ilock(dp, XFS_ILOCK_EXCL | XFS_ILOCK_PARENT);
 unlock_dp_on_error = B_TRUE;




 if (is_dir && dp->i_d.di_nlink >= XFS_MAXLINK) {
  error = XFS_ERROR(EMLINK);
  goto out_trans_cancel;
 }

 xfs_bmap_init(&free_list, &first_block);




 error = xfs_trans_reserve_quota(tp, mp, udqp, gdqp, resblks, 1, 0);
 if (error)
  goto out_trans_cancel;

 error = xfs_dir_canenter(tp, dp, name, resblks);
 if (error)
  goto out_trans_cancel;






 error = xfs_dir_ialloc(&tp, dp, mode, is_dir ? 2 : 1, rdev,
          prid, resblks > 0, &ip, &committed);
 if (error) {
  if (error == ENOSPC)
   goto out_trans_cancel;
  goto out_trans_abort;
 }
 xfs_trans_ijoin_ref(tp, dp, XFS_ILOCK_EXCL);
 unlock_dp_on_error = B_FALSE;

 error = xfs_dir_createname(tp, dp, name, ip->i_ino,
     &first_block, &free_list, resblks ?
     resblks - XFS_IALLOC_SPACE_RES(mp) : 0);
 if (error) {
  ASSERT(error != ENOSPC);
  goto out_trans_abort;
 }
 xfs_trans_ichgtime(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
 xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);

 if (is_dir) {
  error = xfs_dir_init(tp, ip, dp);
  if (error)
   goto out_bmap_cancel;

  error = xfs_bumplink(tp, dp);
  if (error)
   goto out_bmap_cancel;
 }






 if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
  xfs_trans_set_sync(tp);






 xfs_qm_vop_create_dqattach(tp, ip, udqp, gdqp);

 error = xfs_bmap_finish(&tp, &free_list, &committed);
 if (error)
  goto out_bmap_cancel;

 error = xfs_trans_commit(tp, XFS_TRANS_RELEASE_LOG_RES);
 if (error)
  goto out_release_inode;

 xfs_qm_dqrele(udqp);
 xfs_qm_dqrele(gdqp);

 *ipp = ip;
 return 0;

 out_bmap_cancel:
 xfs_bmap_cancel(&free_list);
 out_trans_abort:
 cancel_flags |= XFS_TRANS_ABORT;
 out_trans_cancel:
 xfs_trans_cancel(tp, cancel_flags);
 out_release_inode:





 if (ip)
  IRELE(ip);

 xfs_qm_dqrele(udqp);
 xfs_qm_dqrele(gdqp);

 if (unlock_dp_on_error)
  xfs_iunlock(dp, XFS_ILOCK_EXCL);
 return error;
}
