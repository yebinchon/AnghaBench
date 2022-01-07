
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ack_timer; } ;


 scalar_t__ jiffies ;
 TYPE_1__ llc_main_station ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ sysctl_llc_station_ack_timeout ;

__attribute__((used)) static int llc_station_ac_start_ack_timer(struct sk_buff *skb)
{
 mod_timer(&llc_main_station.ack_timer,
    jiffies + sysctl_llc_station_ack_timeout);
 return 0;
}
