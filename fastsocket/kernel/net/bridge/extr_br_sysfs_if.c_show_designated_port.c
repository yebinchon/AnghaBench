
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int designated_port; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_designated_port(struct net_bridge_port *p, char *buf)
{
 return sprintf(buf, "%d\n", p->designated_port);
}
