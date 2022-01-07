
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct o2hb_region {unsigned int hr_timeout_ms; int hr_blocks; int * hr_slots; int hr_unclean_stop; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;


 int ML_HEARTBEAT ;
 int ML_KTHREAD ;
 int current ;
 int do_gettimeofday (struct timeval*) ;
 int kthread_should_stop () ;
 int mlog (int,char*,...) ;
 int mlog_errno (int) ;
 int msleep_interruptible (unsigned int) ;
 int o2hb_disarm_write_timeout (struct o2hb_region*) ;
 int o2hb_do_disk_heartbeat (struct o2hb_region*) ;
 unsigned int o2hb_elapsed_msecs (struct timeval*,struct timeval*) ;
 int o2hb_issue_node_write (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ;
 int o2hb_prepare_block (struct o2hb_region*,int ) ;
 int o2hb_shutdown_slot (int *) ;
 int o2hb_wait_on_io (struct o2hb_region*,struct o2hb_bio_wait_ctxt*) ;
 int set_user_nice (int ,int) ;

__attribute__((used)) static int o2hb_thread(void *data)
{
 int i, ret;
 struct o2hb_region *reg = data;
 struct o2hb_bio_wait_ctxt write_wc;
 struct timeval before_hb, after_hb;
 unsigned int elapsed_msec;

 mlog(ML_HEARTBEAT|ML_KTHREAD, "hb thread running\n");

 set_user_nice(current, -20);

 while (!kthread_should_stop() && !reg->hr_unclean_stop) {





  do_gettimeofday(&before_hb);

  i = 0;
  do {
   ret = o2hb_do_disk_heartbeat(reg);
  } while (ret && ++i < 2);

  do_gettimeofday(&after_hb);
  elapsed_msec = o2hb_elapsed_msecs(&before_hb, &after_hb);

  mlog(0, "start = %lu.%lu, end = %lu.%lu, msec = %u\n",
       before_hb.tv_sec, (unsigned long) before_hb.tv_usec,
       after_hb.tv_sec, (unsigned long) after_hb.tv_usec,
       elapsed_msec);

  if (elapsed_msec < reg->hr_timeout_ms) {


   msleep_interruptible(reg->hr_timeout_ms - elapsed_msec);
  }
 }

 o2hb_disarm_write_timeout(reg);


 for(i = 0; !reg->hr_unclean_stop && i < reg->hr_blocks; i++)
  o2hb_shutdown_slot(&reg->hr_slots[i]);







 o2hb_prepare_block(reg, 0);
 ret = o2hb_issue_node_write(reg, &write_wc);
 if (ret == 0) {
  o2hb_wait_on_io(reg, &write_wc);
 } else {
  mlog_errno(ret);
 }

 mlog(ML_HEARTBEAT|ML_KTHREAD, "hb thread exiting\n");

 return 0;
}
