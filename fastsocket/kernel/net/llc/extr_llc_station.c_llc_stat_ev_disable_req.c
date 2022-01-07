
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_station_state_ev {scalar_t__ type; scalar_t__ prim; scalar_t__ prim_type; } ;


 scalar_t__ LLC_DISABLE_PRIM ;
 scalar_t__ LLC_PRIM_TYPE_REQ ;
 scalar_t__ LLC_STATION_EV_TYPE_PRIM ;
 struct llc_station_state_ev* llc_station_ev (struct sk_buff*) ;

__attribute__((used)) static int llc_stat_ev_disable_req(struct sk_buff *skb)
{
 struct llc_station_state_ev *ev = llc_station_ev(skb);

 return ev->type == LLC_STATION_EV_TYPE_PRIM &&
        ev->prim == LLC_DISABLE_PRIM &&
        ev->prim_type == LLC_PRIM_TYPE_REQ ? 0 : 1;
}
