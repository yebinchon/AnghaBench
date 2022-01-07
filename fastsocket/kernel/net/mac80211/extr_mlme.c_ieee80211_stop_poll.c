
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {int mtx; } ;


 int __ieee80211_stop_poll (struct ieee80211_sub_if_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ieee80211_stop_poll(struct ieee80211_sub_if_data *sdata)
{
 mutex_lock(&sdata->local->mtx);
 __ieee80211_stop_poll(sdata);
 mutex_unlock(&sdata->local->mtx);
}
