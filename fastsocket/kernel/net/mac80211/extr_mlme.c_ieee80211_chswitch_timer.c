
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int chswitch_work; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__* local; } ;
struct TYPE_4__ {int hw; } ;


 int ieee80211_queue_work (int *,int *) ;

__attribute__((used)) static void ieee80211_chswitch_timer(unsigned long data)
{
 struct ieee80211_sub_if_data *sdata =
  (struct ieee80211_sub_if_data *) data;

 ieee80211_queue_work(&sdata->local->hw, &sdata->u.mgd.chswitch_work);
}
