
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_tune {int gt_incore_log_blocks; int gt_logd_secs; int gt_quota_simul_sync; int gt_quota_warn_period; int gt_quota_scale_num; int gt_quota_scale_den; int gt_max_readahead; int gt_complain_secs; scalar_t__ gt_new_files_jdata; int gt_spin; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void gfs2_tune_init(struct gfs2_tune *gt)
{
 spin_lock_init(&gt->gt_spin);

 gt->gt_incore_log_blocks = 8192;
 gt->gt_logd_secs = 30;
 gt->gt_quota_simul_sync = 64;
 gt->gt_quota_warn_period = 10;
 gt->gt_quota_scale_num = 1;
 gt->gt_quota_scale_den = 1;
 gt->gt_new_files_jdata = 0;
 gt->gt_max_readahead = 1 << 18;
 gt->gt_complain_secs = 10;
}
