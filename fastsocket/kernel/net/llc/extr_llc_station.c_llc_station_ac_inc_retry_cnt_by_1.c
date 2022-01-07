
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int retry_count; } ;


 TYPE_1__ llc_main_station ;

__attribute__((used)) static int llc_station_ac_inc_retry_cnt_by_1(struct sk_buff *skb)
{
 llc_main_station.retry_count++;
 return 0;
}
