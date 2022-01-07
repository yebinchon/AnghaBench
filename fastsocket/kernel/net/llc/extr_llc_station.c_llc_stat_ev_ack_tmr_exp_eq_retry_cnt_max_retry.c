
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct llc_station_state_ev {scalar_t__ type; } ;
struct TYPE_2__ {scalar_t__ retry_count; scalar_t__ maximum_retry; } ;


 scalar_t__ LLC_STATION_EV_TYPE_ACK_TMR ;
 TYPE_1__ llc_main_station ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;

__attribute__((used)) static int llc_stat_ev_ack_tmr_exp_eq_retry_cnt_max_retry(struct sk_buff *skb)
{
 struct llc_station_state_ev *ev = llc_station_ev(skb);

 return ev->type == LLC_STATION_EV_TYPE_ACK_TMR &&
  llc_main_station.retry_count ==
  llc_main_station.maximum_retry ? 0 : 1;
}
