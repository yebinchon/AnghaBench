
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function; scalar_t__ expires; scalar_t__ data; } ;


 int HZ ;
 int MPC_P2 ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int mpc_cache_check ;
 TYPE_1__ mpc_timer ;

__attribute__((used)) static void mpc_timer_refresh(void)
{
 mpc_timer.expires = jiffies + (MPC_P2 * HZ);
 mpc_timer.data = mpc_timer.expires;
 mpc_timer.function = mpc_cache_check;
 add_timer(&mpc_timer);

 return;
}
