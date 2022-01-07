
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597 {int rh_timer; } ;


 int R8A66597_RH_POLL_TIME ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void r8a66597_root_hub_start_polling(struct r8a66597 *r8a66597)
{
 mod_timer(&r8a66597->rh_timer,
   jiffies + msecs_to_jiffies(R8A66597_RH_POLL_TIME));
}
