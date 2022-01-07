
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {unsigned long hw_guard_end; unsigned long hw_guard_wait; } ;


 int TASK_UNINTERRUPTIBLE ;
 unsigned long jiffies ;
 int schedule_timeout (unsigned long) ;
 int set_current_state (int ) ;

__attribute__((used)) static void hw_guard_wait(struct mipid_device *md)
{
 unsigned long wait = md->hw_guard_end - jiffies;

 if ((long)wait > 0 && wait <= md->hw_guard_wait) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(wait);
 }
}
