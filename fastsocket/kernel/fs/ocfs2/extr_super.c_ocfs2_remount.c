
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct ocfs2_super {int s_mount_opt; int osb_flags; int s_feature_incompat; scalar_t__ osb_commit_interval; int preferred_slot; int s_atime_quantum; int osb_lock; } ;
struct mount_options {int mount_opt; scalar_t__ commit_interval; int slot; int atime_quantum; } ;


 int EINVAL ;
 int EROFS ;
 int ML_ERROR ;
 int MS_RDONLY ;
 int OCFS2_FEATURE_INCOMPAT_XATTR ;
 int OCFS2_FEATURE_RO_COMPAT_SUPP ;
 int OCFS2_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int OCFS2_MOUNT_DATA_WRITEBACK ;
 int OCFS2_MOUNT_HB_LOCAL ;
 int OCFS2_MOUNT_INODE64 ;
 int OCFS2_MOUNT_POSIX_ACL ;
 int OCFS2_OSB_ERROR_FS ;
 int OCFS2_OSB_HARD_RO ;
 int OCFS2_OSB_SOFT_RO ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int lock_kernel () ;
 int mlog (int ,char*,...) ;
 int ocfs2_enable_quotas (struct ocfs2_super*) ;
 int ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 int ocfs2_parse_options (struct super_block*,char*,struct mount_options*,int) ;
 int ocfs2_set_journal_params (struct ocfs2_super*) ;
 int ocfs2_susp_quotas (struct ocfs2_super*,int) ;
 scalar_t__ sb_any_quota_suspended (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int ocfs2_remount(struct super_block *sb, int *flags, char *data)
{
 int incompat_features;
 int ret = 0;
 struct mount_options parsed_options;
 struct ocfs2_super *osb = OCFS2_SB(sb);

 lock_kernel();

 if (!ocfs2_parse_options(sb, data, &parsed_options, 1)) {
  ret = -EINVAL;
  goto out;
 }

 if ((osb->s_mount_opt & OCFS2_MOUNT_HB_LOCAL) !=
     (parsed_options.mount_opt & OCFS2_MOUNT_HB_LOCAL)) {
  ret = -EINVAL;
  mlog(ML_ERROR, "Cannot change heartbeat mode on remount\n");
  goto out;
 }

 if ((osb->s_mount_opt & OCFS2_MOUNT_DATA_WRITEBACK) !=
     (parsed_options.mount_opt & OCFS2_MOUNT_DATA_WRITEBACK)) {
  ret = -EINVAL;
  mlog(ML_ERROR, "Cannot change data mode on remount\n");
  goto out;
 }



 if (!(osb->s_mount_opt & OCFS2_MOUNT_INODE64) &&
     (parsed_options.mount_opt & OCFS2_MOUNT_INODE64)) {
  ret = -EINVAL;
  mlog(ML_ERROR, "Cannot enable inode64 on remount\n");
  goto out;
 }


 if ((*flags & MS_RDONLY) != (sb->s_flags & MS_RDONLY)) {

  if (*flags & MS_RDONLY) {
   ret = ocfs2_susp_quotas(osb, 0);
   if (ret < 0)
    goto out;
  }


  spin_lock(&osb->osb_lock);
  if (osb->osb_flags & OCFS2_OSB_HARD_RO) {
   mlog(ML_ERROR, "Remount on readonly device is forbidden.\n");
   ret = -EROFS;
   goto unlock_osb;
  }

  if (*flags & MS_RDONLY) {
   mlog(0, "Going to ro mode.\n");
   sb->s_flags |= MS_RDONLY;
   osb->osb_flags |= OCFS2_OSB_SOFT_RO;
  } else {
   mlog(0, "Making ro filesystem writeable.\n");

   if (osb->osb_flags & OCFS2_OSB_ERROR_FS) {
    mlog(ML_ERROR, "Cannot remount RDWR "
         "filesystem due to previous errors.\n");
    ret = -EROFS;
    goto unlock_osb;
   }
   incompat_features = OCFS2_HAS_RO_COMPAT_FEATURE(sb, ~OCFS2_FEATURE_RO_COMPAT_SUPP);
   if (incompat_features) {
    mlog(ML_ERROR, "Cannot remount RDWR because "
         "of unsupported optional features "
         "(%x).\n", incompat_features);
    ret = -EINVAL;
    goto unlock_osb;
   }
   sb->s_flags &= ~MS_RDONLY;
   osb->osb_flags &= ~OCFS2_OSB_SOFT_RO;
  }
unlock_osb:
  spin_unlock(&osb->osb_lock);

  if (!ret && !(*flags & MS_RDONLY)) {
   if (sb_any_quota_suspended(sb))
    ret = ocfs2_susp_quotas(osb, 1);
   else
    ret = ocfs2_enable_quotas(osb);
   if (ret < 0) {

    spin_lock(&osb->osb_lock);
    sb->s_flags |= MS_RDONLY;
    osb->osb_flags |= OCFS2_OSB_SOFT_RO;
    spin_unlock(&osb->osb_lock);
    goto out;
   }
  }
 }

 if (!ret) {


  if (!(osb->s_feature_incompat & OCFS2_FEATURE_INCOMPAT_XATTR))
   parsed_options.mount_opt &= ~OCFS2_MOUNT_POSIX_ACL;
  osb->s_mount_opt = parsed_options.mount_opt;
  osb->s_atime_quantum = parsed_options.atime_quantum;
  osb->preferred_slot = parsed_options.slot;
  if (parsed_options.commit_interval)
   osb->osb_commit_interval = parsed_options.commit_interval;

  if (!ocfs2_is_hard_readonly(osb))
   ocfs2_set_journal_params(osb);
 }
out:
 unlock_kernel();
 return ret;
}
