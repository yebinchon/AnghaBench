
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_55__ TYPE_4__ ;
typedef struct TYPE_54__ TYPE_3__ ;
typedef struct TYPE_53__ TYPE_2__ ;
typedef struct TYPE_52__ TYPE_1__ ;


struct TYPE_53__ {int sb_blocksize; int sb_qflags; int sb_rootino; int sb_agcount; int sb_inprogress; int sb_logblocks; int sb_logstart; int sb_uuid; int sb_blocklog; int sb_features2; int sb_bad_features2; } ;
typedef TYPE_2__ xfs_sb_t ;
struct TYPE_54__ {int m_update_flags; int m_flags; int m_attr_magicpct; scalar_t__ m_logdev_targp; scalar_t__ m_qflags; scalar_t__ m_ddev_targp; TYPE_2__ m_sb; TYPE_4__* m_rootip; int m_maxagi; int m_perag_tree; int m_perag_lock; scalar_t__ m_dmevmask; int m_fixedfsid; int m_inode_cluster_size; int m_maxioffset; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_52__ {int di_mode; } ;
struct TYPE_55__ {scalar_t__ i_ino; TYPE_1__ i_d; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef scalar_t__ uint ;
typedef int __uint64_t ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int GFP_ATOMIC ;
 int INIT_RADIX_TREE (int *,int ) ;
 int IRELE (TYPE_4__*) ;
 int S_IFDIR ;
 int S_IFMT ;
 int XFS_ALL_QUOTA_ACCT ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR (int ) ;
 int XFS_ERROR_REPORT (char*,int ,TYPE_3__*) ;
 int XFS_FSB_TO_BB (TYPE_3__*,int ) ;
 int XFS_FSB_TO_DADDR (TYPE_3__*,int ) ;
 int XFS_ILOCK_EXCL ;
 int XFS_INODE_BIG_CLUSTER_SIZE ;
 int XFS_IS_QUOTA_ON (TYPE_3__*) ;
 scalar_t__ XFS_IS_QUOTA_RUNNING (TYPE_3__*) ;
 int XFS_LAST_UNMOUNT_WAS_CLEAN (TYPE_3__*) ;
 int XFS_MOUNT_ATTR2 ;
 int XFS_MOUNT_NOATTR2 ;
 int XFS_MOUNT_RDONLY ;
 int XFS_SB_BAD_FEATURES2 ;
 int XFS_SB_FEATURES2 ;
 int XFS_SB_VERSIONNUM ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;
 int uuid_getnodeuniq (int *,int ) ;
 int xfs_alloc_compute_maxlevels (TYPE_3__*) ;
 int xfs_bmap_compute_maxlevels (TYPE_3__*,int ) ;
 int xfs_check_sizes (TYPE_3__*) ;
 int xfs_default_resblks (TYPE_3__*) ;
 int xfs_dir_mount (TYPE_3__*) ;
 int xfs_free_perag (TYPE_3__*) ;
 int xfs_ialloc_compute_maxlevels (TYPE_3__*) ;
 int xfs_iget (TYPE_3__*,int *,int ,int ,int ,TYPE_4__**) ;
 int xfs_initialize_perag (TYPE_3__*,int ,int *) ;
 int xfs_initialize_perag_data (TYPE_3__*,int ) ;
 int xfs_iunlock (TYPE_4__*,int ) ;
 int xfs_log_mount (TYPE_3__*,scalar_t__,int ,int ) ;
 int xfs_log_mount_finish (TYPE_3__*) ;
 int xfs_log_unmount (TYPE_3__*) ;
 int xfs_max_file_offset (int ) ;
 int xfs_mount_common (TYPE_3__*,TYPE_2__*) ;
 int xfs_mount_log_sb (TYPE_3__*,int) ;
 int xfs_mount_reset_sbqflags (TYPE_3__*) ;
 int xfs_notice (TYPE_3__*,char*) ;
 int xfs_qm_mount_quotas (TYPE_3__*) ;
 int xfs_qm_newmount (TYPE_3__*,scalar_t__*,scalar_t__*) ;
 int xfs_reserve_blocks (TYPE_3__*,int *,int *) ;
 int xfs_rtmount_init (TYPE_3__*) ;
 int xfs_rtmount_inodes (TYPE_3__*) ;
 int xfs_rtunmount_inodes (TYPE_3__*) ;
 scalar_t__ xfs_sb_has_mismatched_features2 (TYPE_2__*) ;
 scalar_t__ xfs_sb_version_hasattr2 (TYPE_2__*) ;
 scalar_t__ xfs_sb_version_haslazysbcount (TYPE_2__*) ;
 int xfs_sb_version_removeattr2 (TYPE_2__*) ;
 int xfs_set_inoalignment (TYPE_3__*) ;
 int xfs_set_low_space_thresholds (TYPE_3__*) ;
 int xfs_set_maxicount (TYPE_3__*) ;
 int xfs_set_rw_sizes (TYPE_3__*) ;
 int xfs_trans_init (TYPE_3__*) ;
 int xfs_update_alignment (TYPE_3__*) ;
 int xfs_uuid_mount (TYPE_3__*) ;
 int xfs_uuid_unmount (TYPE_3__*) ;
 int xfs_wait_buftarg (scalar_t__) ;
 int xfs_warn (TYPE_3__*,char*,...) ;

int
xfs_mountfs(
 xfs_mount_t *mp)
{
 xfs_sb_t *sbp = &(mp->m_sb);
 xfs_inode_t *rip;
 __uint64_t resblks;
 uint quotamount = 0;
 uint quotaflags = 0;
 int error = 0;

 xfs_mount_common(mp, sbp);
 if (xfs_sb_has_mismatched_features2(sbp)) {
  xfs_warn(mp, "correcting sb_features alignment problem");
  sbp->sb_features2 |= sbp->sb_bad_features2;
  sbp->sb_bad_features2 = sbp->sb_features2;
  mp->m_update_flags |= XFS_SB_FEATURES2 | XFS_SB_BAD_FEATURES2;





  if (xfs_sb_version_hasattr2(&mp->m_sb) &&
     !(mp->m_flags & XFS_MOUNT_NOATTR2))
   mp->m_flags |= XFS_MOUNT_ATTR2;
 }

 if (xfs_sb_version_hasattr2(&mp->m_sb) &&
    (mp->m_flags & XFS_MOUNT_NOATTR2)) {
  xfs_sb_version_removeattr2(&mp->m_sb);
  mp->m_update_flags |= XFS_SB_FEATURES2;


  if (!sbp->sb_features2)
   mp->m_update_flags |= XFS_SB_VERSIONNUM;
 }







 error = xfs_update_alignment(mp);
 if (error)
  goto out;

 xfs_alloc_compute_maxlevels(mp);
 xfs_bmap_compute_maxlevels(mp, XFS_DATA_FORK);
 xfs_bmap_compute_maxlevels(mp, XFS_ATTR_FORK);
 xfs_ialloc_compute_maxlevels(mp);

 xfs_set_maxicount(mp);

 mp->m_maxioffset = xfs_max_file_offset(sbp->sb_blocklog);

 error = xfs_uuid_mount(mp);
 if (error)
  goto out;




 xfs_set_rw_sizes(mp);


 xfs_set_low_space_thresholds(mp);






 mp->m_inode_cluster_size = XFS_INODE_BIG_CLUSTER_SIZE;




 xfs_set_inoalignment(mp);




 error = xfs_check_sizes(mp);
 if (error)
  goto out_remove_uuid;




 error = xfs_rtmount_init(mp);
 if (error) {
  xfs_warn(mp, "RT mount failed");
  goto out_remove_uuid;
 }





 uuid_getnodeuniq(&sbp->sb_uuid, mp->m_fixedfsid);

 mp->m_dmevmask = 0;

 xfs_dir_mount(mp);




 mp->m_attr_magicpct = (mp->m_sb.sb_blocksize * 37) / 100;




 xfs_trans_init(mp);




 spin_lock_init(&mp->m_perag_lock);
 INIT_RADIX_TREE(&mp->m_perag_tree, GFP_ATOMIC);
 error = xfs_initialize_perag(mp, sbp->sb_agcount, &mp->m_maxagi);
 if (error) {
  xfs_warn(mp, "Failed per-ag init: %d", error);
  goto out_remove_uuid;
 }

 if (!sbp->sb_logblocks) {
  xfs_warn(mp, "no log defined");
  XFS_ERROR_REPORT("xfs_mountfs", XFS_ERRLEVEL_LOW, mp);
  error = XFS_ERROR(EFSCORRUPTED);
  goto out_free_perag;
 }




 error = xfs_log_mount(mp, mp->m_logdev_targp,
         XFS_FSB_TO_DADDR(mp, sbp->sb_logstart),
         XFS_FSB_TO_BB(mp, sbp->sb_logblocks));
 if (error) {
  xfs_warn(mp, "log mount failed");
  goto out_fail_wait;
 }
 if (xfs_sb_version_haslazysbcount(&mp->m_sb) &&
     !XFS_LAST_UNMOUNT_WAS_CLEAN(mp) &&
      !mp->m_sb.sb_inprogress) {
  error = xfs_initialize_perag_data(mp, sbp->sb_agcount);
  if (error)
   goto out_fail_wait;
 }





 error = xfs_iget(mp, ((void*)0), sbp->sb_rootino, 0, XFS_ILOCK_EXCL, &rip);
 if (error) {
  xfs_warn(mp, "failed to read root inode");
  goto out_log_dealloc;
 }

 ASSERT(rip != ((void*)0));

 if (unlikely((rip->i_d.di_mode & S_IFMT) != S_IFDIR)) {
  xfs_warn(mp, "corrupted root inode %llu: not a directory",
   (unsigned long long)rip->i_ino);
  xfs_iunlock(rip, XFS_ILOCK_EXCL);
  XFS_ERROR_REPORT("xfs_mountfs_int(2)", XFS_ERRLEVEL_LOW,
     mp);
  error = XFS_ERROR(EFSCORRUPTED);
  goto out_rele_rip;
 }
 mp->m_rootip = rip;

 xfs_iunlock(rip, XFS_ILOCK_EXCL);




 error = xfs_rtmount_inodes(mp);
 if (error) {



  xfs_warn(mp, "failed to read RT inodes");
  goto out_rele_rip;
 }






 if (mp->m_update_flags && !(mp->m_flags & XFS_MOUNT_RDONLY)) {
  error = xfs_mount_log_sb(mp, mp->m_update_flags);
  if (error) {
   xfs_warn(mp, "failed to write sb changes");
   goto out_rtunmount;
  }
 }




 if (XFS_IS_QUOTA_RUNNING(mp)) {
  error = xfs_qm_newmount(mp, &quotamount, &quotaflags);
  if (error)
   goto out_rtunmount;
 } else {
  ASSERT(!XFS_IS_QUOTA_ON(mp));






  if (mp->m_sb.sb_qflags & XFS_ALL_QUOTA_ACCT) {
   xfs_notice(mp, "resetting quota flags");
   error = xfs_mount_reset_sbqflags(mp);
   if (error)
    return error;
  }
 }






 error = xfs_log_mount_finish(mp);
 if (error) {
  xfs_warn(mp, "log mount finish failed");
  goto out_rtunmount;
 }




 if (quotamount) {
  ASSERT(mp->m_qflags == 0);
  mp->m_qflags = quotaflags;

  xfs_qm_mount_quotas(mp);
 }
 if (!(mp->m_flags & XFS_MOUNT_RDONLY)) {
  resblks = xfs_default_resblks(mp);
  error = xfs_reserve_blocks(mp, &resblks, ((void*)0));
  if (error)
   xfs_warn(mp,
 "Unable to allocate reserve blocks. Continuing without reserve pool.");
 }

 return 0;

 out_rtunmount:
 xfs_rtunmount_inodes(mp);
 out_rele_rip:
 IRELE(rip);
 out_log_dealloc:
 xfs_log_unmount(mp);
 out_fail_wait:
 if (mp->m_logdev_targp && mp->m_logdev_targp != mp->m_ddev_targp)
  xfs_wait_buftarg(mp->m_logdev_targp);
 xfs_wait_buftarg(mp->m_ddev_targp);
 out_free_perag:
 xfs_free_perag(mp);
 out_remove_uuid:
 xfs_uuid_unmount(mp);
 out:
 return error;
}
