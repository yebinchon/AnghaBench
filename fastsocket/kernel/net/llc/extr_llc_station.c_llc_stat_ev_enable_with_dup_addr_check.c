
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_station_state_ev {scalar_t__ type; scalar_t__ prim_type; } ;


 scalar_t__ LLC_STATION_EV_ENABLE_WITH_DUP_ADDR_CHECK ;
 scalar_t__ LLC_STATION_EV_TYPE_SIMPLE ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;

__attribute__((used)) static int llc_stat_ev_enable_with_dup_addr_check(struct sk_buff *skb)
{
 struct llc_station_state_ev *ev = llc_station_ev(skb);

 return ev->type == LLC_STATION_EV_TYPE_SIMPLE &&
        ev->prim_type ==
         LLC_STATION_EV_ENABLE_WITH_DUP_ADDR_CHECK ? 0 : 1;
}
