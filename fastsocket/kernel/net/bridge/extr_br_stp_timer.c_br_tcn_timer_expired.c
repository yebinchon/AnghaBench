
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge {int lock; scalar_t__ bridge_hello_time; int tcn_timer; TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; int name; } ;


 int IFF_UP ;
 int br_transmit_tcn (struct net_bridge*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void br_tcn_timer_expired(unsigned long arg)
{
 struct net_bridge *br = (struct net_bridge *) arg;

 pr_debug("%s: tcn timer expired\n", br->dev->name);
 spin_lock(&br->lock);
 if (br->dev->flags & IFF_UP) {
  br_transmit_tcn(br);

  mod_timer(&br->tcn_timer,jiffies + br->bridge_hello_time);
 }
 spin_unlock(&br->lock);
}
