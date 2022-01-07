
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct timer_list {int dummy; } ;


 int del_timer (struct timer_list*) ;
 scalar_t__ likely (int ) ;
 int try_to_grab_pending (struct work_struct*) ;
 scalar_t__ unlikely (int) ;
 int wait_on_work (struct work_struct*) ;
 int work_clear_pending (struct work_struct*) ;

__attribute__((used)) static int __cancel_work_timer(struct work_struct *work,
    struct timer_list* timer)
{
 int ret;

 do {
  ret = (timer && likely(del_timer(timer)));
  if (!ret)
   ret = try_to_grab_pending(work);
  wait_on_work(work);
 } while (unlikely(ret < 0));

 work_clear_pending(work);
 return ret;
}
