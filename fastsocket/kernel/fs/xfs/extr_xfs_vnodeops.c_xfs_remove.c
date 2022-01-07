
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_23__ {int m_flags; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_22__ {int di_nlink; int di_mode; } ;
struct TYPE_24__ {int i_ino; TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_bmap_free_t ;
typedef scalar_t__ uint ;
struct xfs_name {int dummy; } ;


 int ASSERT (int) ;
 int EIO ;
 int ENOENT ;
 int ENOSPC ;
 int ENOTEMPTY ;
 int S_ISDIR (int ) ;
 scalar_t__ XFS_DEFAULT_LOG_COUNT ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (TYPE_2__*) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_MOUNT_DIRSYNC ;
 int XFS_MOUNT_WSYNC ;
 scalar_t__ XFS_REMOVE_LOG_COUNT ;
 int XFS_REMOVE_LOG_RES (TYPE_2__*) ;
 scalar_t__ XFS_REMOVE_SPACE_RES (TYPE_2__*) ;
 int XFS_TRANS_ABORT ;
 int XFS_TRANS_PERM_LOG_RES ;
 int XFS_TRANS_RELEASE_LOG_RES ;
 int XFS_TRANS_REMOVE ;
 int XFS_TRANS_RMDIR ;
 int trace_xfs_remove (TYPE_3__*,struct xfs_name*) ;
 int xfs_bmap_cancel (int *) ;
 int xfs_bmap_finish (int **,int *,int*) ;
 int xfs_bmap_init (int *,int *) ;
 int xfs_dir_isempty (TYPE_3__*) ;
 int xfs_dir_removename (int *,TYPE_3__*,struct xfs_name*,int ,int *,int *,scalar_t__) ;
 int xfs_droplink (int *,TYPE_3__*) ;
 int xfs_filestream_deassociate (TYPE_3__*) ;
 scalar_t__ xfs_inode_is_filestream (TYPE_3__*) ;
 int xfs_lock_two_inodes (TYPE_3__*,TYPE_3__*,int ) ;
 int xfs_qm_dqattach (TYPE_3__*,int ) ;
 int * xfs_trans_alloc (TYPE_2__*,int ) ;
 int xfs_trans_cancel (int *,int) ;
 int xfs_trans_commit (int *,int) ;
 int xfs_trans_ichgtime (int *,TYPE_3__*,int) ;
 int xfs_trans_ijoin_ref (int *,TYPE_3__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_3__*,int ) ;
 int xfs_trans_reserve (int *,scalar_t__,int ,int ,int ,scalar_t__) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_remove(
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_inode_t *ip)
{
 xfs_mount_t *mp = dp->i_mount;
 xfs_trans_t *tp = ((void*)0);
 int is_dir = S_ISDIR(ip->i_d.di_mode);
 int error = 0;
 xfs_bmap_free_t free_list;
 xfs_fsblock_t first_block;
 int cancel_flags;
 int committed;
 int link_zero;
 uint resblks;
 uint log_count;

 trace_xfs_remove(dp, name);

 if (XFS_FORCED_SHUTDOWN(mp))
  return XFS_ERROR(EIO);

 error = xfs_qm_dqattach(dp, 0);
 if (error)
  goto std_return;

 error = xfs_qm_dqattach(ip, 0);
 if (error)
  goto std_return;

 if (is_dir) {
  tp = xfs_trans_alloc(mp, XFS_TRANS_RMDIR);
  log_count = XFS_DEFAULT_LOG_COUNT;
 } else {
  tp = xfs_trans_alloc(mp, XFS_TRANS_REMOVE);
  log_count = XFS_REMOVE_LOG_COUNT;
 }
 cancel_flags = XFS_TRANS_RELEASE_LOG_RES;
 resblks = XFS_REMOVE_SPACE_RES(mp);
 error = xfs_trans_reserve(tp, resblks, XFS_REMOVE_LOG_RES(mp), 0,
      XFS_TRANS_PERM_LOG_RES, log_count);
 if (error == ENOSPC) {
  resblks = 0;
  error = xfs_trans_reserve(tp, 0, XFS_REMOVE_LOG_RES(mp), 0,
       XFS_TRANS_PERM_LOG_RES, log_count);
 }
 if (error) {
  ASSERT(error != ENOSPC);
  cancel_flags = 0;
  goto out_trans_cancel;
 }

 xfs_lock_two_inodes(dp, ip, XFS_ILOCK_EXCL);

 xfs_trans_ijoin_ref(tp, dp, XFS_ILOCK_EXCL);
 xfs_trans_ijoin_ref(tp, ip, XFS_ILOCK_EXCL);




 cancel_flags |= XFS_TRANS_ABORT;
 if (is_dir) {
  ASSERT(ip->i_d.di_nlink >= 2);
  if (ip->i_d.di_nlink != 2) {
   error = XFS_ERROR(ENOTEMPTY);
   goto out_trans_cancel;
  }
  if (!xfs_dir_isempty(ip)) {
   error = XFS_ERROR(ENOTEMPTY);
   goto out_trans_cancel;
  }


  error = xfs_droplink(tp, dp);
  if (error)
   goto out_trans_cancel;


  error = xfs_droplink(tp, ip);
  if (error)
   goto out_trans_cancel;
 } else {





  xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);
 }
 xfs_trans_ichgtime(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);


 error = xfs_droplink(tp, ip);
 if (error)
  goto out_trans_cancel;


 link_zero = (ip->i_d.di_nlink == 0);

 xfs_bmap_init(&free_list, &first_block);
 error = xfs_dir_removename(tp, dp, name, ip->i_ino,
     &first_block, &free_list, resblks);
 if (error) {
  ASSERT(error != ENOENT);
  goto out_bmap_cancel;
 }






 if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
  xfs_trans_set_sync(tp);

 error = xfs_bmap_finish(&tp, &free_list, &committed);
 if (error)
  goto out_bmap_cancel;

 error = xfs_trans_commit(tp, XFS_TRANS_RELEASE_LOG_RES);
 if (error)
  goto std_return;







 if (!is_dir && link_zero && xfs_inode_is_filestream(ip))
  xfs_filestream_deassociate(ip);

 return 0;

 out_bmap_cancel:
 xfs_bmap_cancel(&free_list);
 out_trans_cancel:
 xfs_trans_cancel(tp, cancel_flags);
 std_return:
 return error;
}
