
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_32__ {int m_flags; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_31__ {int di_mode; scalar_t__ di_nlink; int di_flags; } ;
struct TYPE_33__ {int i_ino; TYPE_1__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_bmap_free_t ;
struct xfs_name {int len; } ;


 int ASSERT (int) ;
 int EEXIST ;
 int EMLINK ;
 int ENOSPC ;
 int EXDEV ;
 int S_IFDIR ;
 int S_IFMT ;
 int XFS_DIFLAG_PROJINHERIT ;
 int XFS_ERROR (int) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 scalar_t__ XFS_MAXLINK ;
 int XFS_MOUNT_DIRSYNC ;
 int XFS_MOUNT_WSYNC ;
 int XFS_RENAME_LOG_COUNT ;
 int XFS_RENAME_LOG_RES (TYPE_2__*) ;
 int XFS_RENAME_SPACE_RES (TYPE_2__*,int ) ;
 int XFS_TRANS_ABORT ;
 int XFS_TRANS_PERM_LOG_RES ;
 int XFS_TRANS_RELEASE_LOG_RES ;
 int XFS_TRANS_RENAME ;
 int trace_xfs_rename (TYPE_3__*,TYPE_3__*,struct xfs_name*,struct xfs_name*) ;
 scalar_t__ unlikely (int) ;
 int xfs_bmap_cancel (int *) ;
 int xfs_bmap_finish (int **,int *,int*) ;
 int xfs_bmap_init (int *,int *) ;
 int xfs_bumplink (int *,TYPE_3__*) ;
 int xfs_dir_canenter (int *,TYPE_3__*,struct xfs_name*,int) ;
 int xfs_dir_createname (int *,TYPE_3__*,struct xfs_name*,int ,int *,int *,int) ;
 int xfs_dir_isempty (TYPE_3__*) ;
 int xfs_dir_removename (int *,TYPE_3__*,struct xfs_name*,int ,int *,int *,int) ;
 int xfs_dir_replace (int *,TYPE_3__*,struct xfs_name*,int ,int *,int *,int) ;
 int xfs_droplink (int *,TYPE_3__*) ;
 scalar_t__ xfs_get_projid (TYPE_3__*) ;
 int xfs_lock_inodes (TYPE_3__**,int,int ) ;
 struct xfs_name xfs_name_dotdot ;
 int xfs_qm_vop_rename_dqattach (TYPE_3__**) ;
 int xfs_sort_for_rename (TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__**,int*) ;
 int * xfs_trans_alloc (TYPE_2__*,int ) ;
 int xfs_trans_cancel (int *,int) ;
 int xfs_trans_commit (int *,int) ;
 int xfs_trans_ichgtime (int *,TYPE_3__*,int) ;
 int xfs_trans_ijoin_ref (int *,TYPE_3__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_3__*,int ) ;
 int xfs_trans_reserve (int *,int,int ,int ,int ,int ) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_rename(
 xfs_inode_t *src_dp,
 struct xfs_name *src_name,
 xfs_inode_t *src_ip,
 xfs_inode_t *target_dp,
 struct xfs_name *target_name,
 xfs_inode_t *target_ip)
{
 xfs_trans_t *tp = ((void*)0);
 xfs_mount_t *mp = src_dp->i_mount;
 int new_parent;
 int src_is_directory;
 int error;
 xfs_bmap_free_t free_list;
 xfs_fsblock_t first_block;
 int cancel_flags;
 int committed;
 xfs_inode_t *inodes[4];
 int spaceres;
 int num_inodes;

 trace_xfs_rename(src_dp, target_dp, src_name, target_name);

 new_parent = (src_dp != target_dp);
 src_is_directory = ((src_ip->i_d.di_mode & S_IFMT) == S_IFDIR);

 if (src_is_directory) {



  if (target_ip == ((void*)0) && new_parent &&
      target_dp->i_d.di_nlink >= XFS_MAXLINK) {
   error = XFS_ERROR(EMLINK);
   goto std_return;
  }
 }

 xfs_sort_for_rename(src_dp, target_dp, src_ip, target_ip,
    inodes, &num_inodes);

 xfs_bmap_init(&free_list, &first_block);
 tp = xfs_trans_alloc(mp, XFS_TRANS_RENAME);
 cancel_flags = XFS_TRANS_RELEASE_LOG_RES;
 spaceres = XFS_RENAME_SPACE_RES(mp, target_name->len);
 error = xfs_trans_reserve(tp, spaceres, XFS_RENAME_LOG_RES(mp), 0,
   XFS_TRANS_PERM_LOG_RES, XFS_RENAME_LOG_COUNT);
 if (error == ENOSPC) {
  spaceres = 0;
  error = xfs_trans_reserve(tp, 0, XFS_RENAME_LOG_RES(mp), 0,
    XFS_TRANS_PERM_LOG_RES, XFS_RENAME_LOG_COUNT);
 }
 if (error) {
  xfs_trans_cancel(tp, 0);
  goto std_return;
 }




 error = xfs_qm_vop_rename_dqattach(inodes);
 if (error) {
  xfs_trans_cancel(tp, cancel_flags);
  goto std_return;
 }







 xfs_lock_inodes(inodes, num_inodes, XFS_ILOCK_EXCL);






 xfs_trans_ijoin_ref(tp, src_dp, XFS_ILOCK_EXCL);
 if (new_parent)
  xfs_trans_ijoin_ref(tp, target_dp, XFS_ILOCK_EXCL);
 xfs_trans_ijoin_ref(tp, src_ip, XFS_ILOCK_EXCL);
 if (target_ip)
  xfs_trans_ijoin_ref(tp, target_ip, XFS_ILOCK_EXCL);






 if (unlikely((target_dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT) &&
       (xfs_get_projid(target_dp) != xfs_get_projid(src_ip)))) {
  error = XFS_ERROR(EXDEV);
  goto error_return;
 }




 if (target_ip == ((void*)0)) {




  error = xfs_dir_canenter(tp, target_dp, target_name, spaceres);
  if (error)
   goto error_return;





  error = xfs_dir_createname(tp, target_dp, target_name,
      src_ip->i_ino, &first_block,
      &free_list, spaceres);
  if (error == ENOSPC)
   goto error_return;
  if (error)
   goto abort_return;

  xfs_trans_ichgtime(tp, target_dp,
     XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

  if (new_parent && src_is_directory) {
   error = xfs_bumplink(tp, target_dp);
   if (error)
    goto abort_return;
  }
 } else {





  if ((target_ip->i_d.di_mode & S_IFMT) == S_IFDIR) {



   if (!(xfs_dir_isempty(target_ip)) ||
       (target_ip->i_d.di_nlink > 2)) {
    error = XFS_ERROR(EEXIST);
    goto error_return;
   }
  }
  error = xfs_dir_replace(tp, target_dp, target_name,
     src_ip->i_ino,
     &first_block, &free_list, spaceres);
  if (error)
   goto abort_return;

  xfs_trans_ichgtime(tp, target_dp,
     XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);





  error = xfs_droplink(tp, target_ip);
  if (error)
   goto abort_return;

  if (src_is_directory) {



   error = xfs_droplink(tp, target_ip);
   if (error)
    goto abort_return;
  }
 }




 if (new_parent && src_is_directory) {




  error = xfs_dir_replace(tp, src_ip, &xfs_name_dotdot,
     target_dp->i_ino,
     &first_block, &free_list, spaceres);
  ASSERT(error != EEXIST);
  if (error)
   goto abort_return;
 }
 xfs_trans_ichgtime(tp, src_ip, XFS_ICHGTIME_CHG);
 xfs_trans_log_inode(tp, src_ip, XFS_ILOG_CORE);






 if (src_is_directory && (new_parent || target_ip != ((void*)0))) {





  error = xfs_droplink(tp, src_dp);
  if (error)
   goto abort_return;
 }

 error = xfs_dir_removename(tp, src_dp, src_name, src_ip->i_ino,
     &first_block, &free_list, spaceres);
 if (error)
  goto abort_return;

 xfs_trans_ichgtime(tp, src_dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
 xfs_trans_log_inode(tp, src_dp, XFS_ILOG_CORE);
 if (new_parent)
  xfs_trans_log_inode(tp, target_dp, XFS_ILOG_CORE);






 if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC)) {
  xfs_trans_set_sync(tp);
 }

 error = xfs_bmap_finish(&tp, &free_list, &committed);
 if (error) {
  xfs_bmap_cancel(&free_list);
  xfs_trans_cancel(tp, (XFS_TRANS_RELEASE_LOG_RES |
     XFS_TRANS_ABORT));
  goto std_return;
 }





 return xfs_trans_commit(tp, XFS_TRANS_RELEASE_LOG_RES);

 abort_return:
 cancel_flags |= XFS_TRANS_ABORT;
 error_return:
 xfs_bmap_cancel(&free_list);
 xfs_trans_cancel(tp, cancel_flags);
 std_return:
 return error;
}
