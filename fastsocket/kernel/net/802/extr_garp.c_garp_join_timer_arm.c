
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct garp_applicant {int join_timer; } ;


 int garp_join_time ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int net_random () ;

__attribute__((used)) static void garp_join_timer_arm(struct garp_applicant *app)
{
 unsigned long delay;

 delay = (u64)msecs_to_jiffies(garp_join_time) * net_random() >> 32;
 mod_timer(&app->join_timer, jiffies + delay);
}
