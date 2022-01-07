
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECS_FIRST_SCAN ;
 int current ;
 long jiffies_scan_wait ;
 int kmemleak_scan () ;
 int kthread_should_stop () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int scan_mutex ;
 long schedule_timeout_interruptible (long) ;
 int set_user_nice (int ,int) ;
 int ssleep (int ) ;

__attribute__((used)) static int kmemleak_scan_thread(void *arg)
{
 static int first_run = 1;

 pr_info("Automatic memory scanning thread started\n");
 set_user_nice(current, 10);




 if (first_run) {
  first_run = 0;
  ssleep(SECS_FIRST_SCAN);
 }

 while (!kthread_should_stop()) {
  signed long timeout = jiffies_scan_wait;

  mutex_lock(&scan_mutex);
  kmemleak_scan();
  mutex_unlock(&scan_mutex);


  while (timeout && !kthread_should_stop())
   timeout = schedule_timeout_interruptible(timeout);
 }

 pr_info("Automatic memory scanning thread ended\n");

 return 0;
}
