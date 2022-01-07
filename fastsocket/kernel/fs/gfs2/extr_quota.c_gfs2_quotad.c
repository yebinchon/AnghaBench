
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_tune {int gt_quota_quantum; int gt_statfs_quantum; } ;
struct gfs2_sbd {int sd_quota_wait; scalar_t__ sd_statfs_force_sync; int sd_trunc_lock; int sd_trunc_list; int sd_vfs; struct gfs2_tune sd_tune; } ;


 int DEFINE_WAIT (int ) ;
 unsigned long HZ ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 scalar_t__ freezing (int ) ;
 int gfs2_quota_sync (int ,int ) ;
 int gfs2_statfs_sync (int ,int ) ;
 unsigned long gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_statfs_quantum ;
 int kthread_should_stop () ;
 int list_empty (int *) ;
 unsigned long min (unsigned long,unsigned long) ;
 int prepare_to_wait (int *,int *,int ) ;
 int quotad_check_timeo (struct gfs2_sbd*,char*,int (*) (int ,int ),unsigned long,unsigned long*,int *) ;
 int quotad_check_trunc_list (struct gfs2_sbd*) ;
 int quotad_error (struct gfs2_sbd*,char*,int) ;
 int refrigerator () ;
 scalar_t__ schedule_timeout (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;

int gfs2_quotad(void *data)
{
 struct gfs2_sbd *sdp = data;
 struct gfs2_tune *tune = &sdp->sd_tune;
 unsigned long statfs_timeo = 0;
 unsigned long quotad_timeo = 0;
 unsigned long t = 0;
 DEFINE_WAIT(wait);
 int empty;

 while (!kthread_should_stop()) {


  if (sdp->sd_statfs_force_sync) {
   int error = gfs2_statfs_sync(sdp->sd_vfs, 0);
   quotad_error(sdp, "statfs", error);
   statfs_timeo = gfs2_tune_get(sdp, gt_statfs_quantum) * HZ;
  }
  else
   quotad_check_timeo(sdp, "statfs", gfs2_statfs_sync, t,
           &statfs_timeo,
        &tune->gt_statfs_quantum);


  quotad_check_timeo(sdp, "sync", gfs2_quota_sync, t,
       &quotad_timeo, &tune->gt_quota_quantum);


  quotad_check_trunc_list(sdp);

  if (freezing(current))
   refrigerator();
  t = min(quotad_timeo, statfs_timeo);

  prepare_to_wait(&sdp->sd_quota_wait, &wait, TASK_INTERRUPTIBLE);
  spin_lock(&sdp->sd_trunc_lock);
  empty = list_empty(&sdp->sd_trunc_list);
  spin_unlock(&sdp->sd_trunc_lock);
  if (empty && !sdp->sd_statfs_force_sync)
   t -= schedule_timeout(t);
  else
   t = 0;
  finish_wait(&sdp->sd_quota_wait, &wait);
 }

 return 0;
}
