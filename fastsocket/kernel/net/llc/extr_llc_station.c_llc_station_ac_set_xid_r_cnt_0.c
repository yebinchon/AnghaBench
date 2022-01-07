
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ xid_r_count; } ;


 TYPE_1__ llc_main_station ;

__attribute__((used)) static int llc_station_ac_set_xid_r_cnt_0(struct sk_buff *skb)
{
 llc_main_station.xid_r_count = 0;
 return 0;
}
