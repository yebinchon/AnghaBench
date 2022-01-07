
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;
typedef int ssize_t ;


 int BR_PORT_BITS ;
 int ERANGE ;
 int br_stp_set_port_priority (struct net_bridge_port*,unsigned long) ;

__attribute__((used)) static ssize_t store_priority(struct net_bridge_port *p, unsigned long v)
{
 if (v >= (1<<(16-BR_PORT_BITS)))
  return -ERANGE;
 br_stp_set_port_priority(p, v);
 return 0;
}
