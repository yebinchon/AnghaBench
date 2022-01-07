
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void rate_control_pid_free_sta(void *priv, struct ieee80211_sta *sta,
          void *priv_sta)
{
 kfree(priv_sta);
}
