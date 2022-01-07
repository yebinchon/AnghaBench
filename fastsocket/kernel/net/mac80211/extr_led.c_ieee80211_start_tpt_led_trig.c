
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpt_led_trigger {int running; int timer; } ;
struct ieee80211_local {struct tpt_led_trigger* tpt_led_trigger; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int tpt_trig_timer (unsigned long) ;
 int tpt_trig_traffic (struct ieee80211_local*,struct tpt_led_trigger*) ;

__attribute__((used)) static void ieee80211_start_tpt_led_trig(struct ieee80211_local *local)
{
 struct tpt_led_trigger *tpt_trig = local->tpt_led_trigger;

 if (tpt_trig->running)
  return;


 tpt_trig_traffic(local, tpt_trig);
 tpt_trig->running = 1;

 tpt_trig_timer((unsigned long)local);
 mod_timer(&tpt_trig->timer, round_jiffies(jiffies + HZ));
}
