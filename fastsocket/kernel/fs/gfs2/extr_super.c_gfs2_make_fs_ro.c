
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_flags; int sd_trans_gl; int sd_vfs; } ;
struct gfs2_holder {scalar_t__ gh_gl; } ;


 int GL_NOCACHE ;
 int LM_ST_SHARED ;
 int SDF_JOURNAL_LIVE ;
 int SDF_SHUTDOWN ;
 int clear_bit (int ,int *) ;
 int flush_workqueue (int ) ;
 int gfs2_delete_workqueue ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_log_shutdown (struct gfs2_sbd*) ;
 int gfs2_meta_syncfs (struct gfs2_sbd*) ;
 int gfs2_quota_cleanup (struct gfs2_sbd*) ;
 int gfs2_quota_sync (int ,int ) ;
 int gfs2_statfs_sync (int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int gfs2_make_fs_ro(struct gfs2_sbd *sdp)
{
 struct gfs2_holder t_gh;
 int error;

 flush_workqueue(gfs2_delete_workqueue);
 gfs2_quota_sync(sdp->sd_vfs, 0);
 gfs2_statfs_sync(sdp->sd_vfs, 0);

 error = gfs2_glock_nq_init(sdp->sd_trans_gl, LM_ST_SHARED, GL_NOCACHE,
       &t_gh);
 if (error && !test_bit(SDF_SHUTDOWN, &sdp->sd_flags))
  return error;

 gfs2_meta_syncfs(sdp);
 gfs2_log_shutdown(sdp);

 clear_bit(SDF_JOURNAL_LIVE, &sdp->sd_flags);

 if (t_gh.gh_gl)
  gfs2_glock_dq_uninit(&t_gh);

 gfs2_quota_cleanup(sdp);

 return error;
}
