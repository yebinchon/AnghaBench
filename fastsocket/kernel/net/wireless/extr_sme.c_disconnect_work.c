
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int cfg80211_is_all_idle () ;
 int regulatory_hint_disconnect () ;

__attribute__((used)) static void disconnect_work(struct work_struct *work)
{
 if (!cfg80211_is_all_idle())
  return;

 regulatory_hint_disconnect();
}
