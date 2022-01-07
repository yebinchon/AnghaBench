
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int flags; } ;
typedef int ssize_t ;


 int BR_HAIRPIN_MODE ;

__attribute__((used)) static ssize_t store_hairpin_mode(struct net_bridge_port *p, unsigned long v)
{
 if (v)
  p->flags |= BR_HAIRPIN_MODE;
 else
  p->flags &= ~BR_HAIRPIN_MODE;
 return 0;
}
