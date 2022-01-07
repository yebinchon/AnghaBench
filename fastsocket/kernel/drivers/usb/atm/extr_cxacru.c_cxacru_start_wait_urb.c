
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int actual_length; int status; } ;
struct timer_list {unsigned long data; int function; scalar_t__ expires; } ;
struct completion {int dummy; } ;


 int CMD_TIMEOUT ;
 int add_timer (struct timer_list*) ;
 int cxacru_timeout_kill ;
 int del_timer_sync (struct timer_list*) ;
 int init_timer (struct timer_list*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static int cxacru_start_wait_urb(struct urb *urb, struct completion *done,
     int* actual_length)
{
 struct timer_list timer;

 init_timer(&timer);
 timer.expires = jiffies + msecs_to_jiffies(CMD_TIMEOUT);
 timer.data = (unsigned long) urb;
 timer.function = cxacru_timeout_kill;
 add_timer(&timer);
 wait_for_completion(done);
 del_timer_sync(&timer);

 if (actual_length)
  *actual_length = urb->actual_length;
 return urb->status;
}
