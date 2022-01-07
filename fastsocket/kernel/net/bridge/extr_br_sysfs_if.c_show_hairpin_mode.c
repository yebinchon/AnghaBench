
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int flags; } ;
typedef int ssize_t ;


 int BR_HAIRPIN_MODE ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_hairpin_mode(struct net_bridge_port *p, char *buf)
{
 int hairpin_mode = (p->flags & BR_HAIRPIN_MODE) ? 1 : 0;
 return sprintf(buf, "%d\n", hairpin_mode);
}
