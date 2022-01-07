
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct gfs2_sbd {struct task_struct* sd_logd_process; struct task_struct* sd_quotad_process; int sd_log_flush_time; } ;


 int IS_ERR (struct task_struct*) ;
 int fs_err (struct gfs2_sbd*,char*,int) ;
 int gfs2_logd ;
 int gfs2_quotad ;
 int jiffies ;
 struct task_struct* kthread_run (int ,struct gfs2_sbd*,char*) ;
 int kthread_stop (struct task_struct*) ;

__attribute__((used)) static int init_threads(struct gfs2_sbd *sdp, int undo)
{
 struct task_struct *p;
 int error = 0;

 if (undo)
  goto fail_quotad;

 sdp->sd_log_flush_time = jiffies;

 p = kthread_run(gfs2_logd, sdp, "gfs2_logd");
 error = IS_ERR(p);
 if (error) {
  fs_err(sdp, "can't start logd thread: %d\n", error);
  return error;
 }
 sdp->sd_logd_process = p;

 p = kthread_run(gfs2_quotad, sdp, "gfs2_quotad");
 error = IS_ERR(p);
 if (error) {
  fs_err(sdp, "can't start quotad thread: %d\n", error);
  goto fail;
 }
 sdp->sd_quotad_process = p;

 return 0;


fail_quotad:
 kthread_stop(sdp->sd_quotad_process);
fail:
 kthread_stop(sdp->sd_logd_process);
 return error;
}
