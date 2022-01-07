
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_port_params {int addr_len; int port; int * addr; } ;
struct inet_port {char* dns_addr; int dns_port; } ;


 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int htons (int ) ;
 char* realloc (int *,int) ;
 int strnlen (int *,int) ;

__attribute__((used)) static int
dns_create(struct inet_port *port, struct inet_port_params *params)
{
 if (params->addr_len > 64)
  return (SNMP_ERR_INCONS_VALUE);

 if (strnlen(params->addr, params->addr_len) !=
     params->addr_len)
  return (SNMP_ERR_INCONS_VALUE);

 if ((port->dns_addr = realloc(params->addr,
     params->addr_len + 1)) == ((void*)0))
  return (SNMP_ERR_GENERR);

 port->dns_addr[params->addr_len] = '\0';
 params->addr = ((void*)0);

 port->dns_port = htons(params->port);

 return (SNMP_ERR_NOERROR);
}
