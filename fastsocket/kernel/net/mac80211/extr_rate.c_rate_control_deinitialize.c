
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_control_ref {int dummy; } ;
struct ieee80211_local {struct rate_control_ref* rate_ctrl; } ;


 int rate_control_free (struct rate_control_ref*) ;

void rate_control_deinitialize(struct ieee80211_local *local)
{
 struct rate_control_ref *ref;

 ref = local->rate_ctrl;

 if (!ref)
  return;

 local->rate_ctrl = ((void*)0);
 rate_control_free(ref);
}
