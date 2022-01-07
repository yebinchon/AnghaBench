
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int port_no; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_port_no(struct net_bridge_port *p, char *buf)
{
 return sprintf(buf, "0x%x\n", p->port_no);
}
