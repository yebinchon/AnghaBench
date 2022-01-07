
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge {int lock; scalar_t__ hello_time; int hello_timer; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; int name; } ;


 int IFF_UP ;
 int br_config_bpdu_generation (struct net_bridge*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int pr_debug (char*,int ) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_hello_timer_expired(unsigned long arg)
{
 struct net_bridge *br = (struct net_bridge *)arg;

 pr_debug("%s: hello timer expired\n", br->dev->name);
 spin_lock(&br->lock);
 if (br->dev->flags & IFF_UP) {
  br_config_bpdu_generation(br);

  mod_timer(&br->hello_timer, round_jiffies(jiffies + br->hello_time));
 }
 spin_unlock(&br->lock);
}
