
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct llc_station_state_trans {int (* ev ) (struct sk_buff*) ;} ;
struct llc_station_state {struct llc_station_state_trans** transitions; } ;
struct TYPE_2__ {int state; } ;


 TYPE_1__ llc_main_station ;
 struct llc_station_state* llc_station_state_table ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static struct llc_station_state_trans *
    llc_find_station_trans(struct sk_buff *skb)
{
 int i = 0;
 struct llc_station_state_trans *rc = ((void*)0);
 struct llc_station_state_trans **next_trans;
 struct llc_station_state *curr_state =
    &llc_station_state_table[llc_main_station.state - 1];

 for (next_trans = curr_state->transitions; next_trans[i]->ev; i++)
  if (!next_trans[i]->ev(skb)) {
   rc = next_trans[i];
   break;
  }
 return rc;
}
