
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_port_params {int addr_len; } ;
struct inet_port {int dummy; } ;


 int SNMP_ERR_INCONS_VALUE ;
 int const SNMP_ERR_NOERROR ;
 int ipv6_create_common (struct inet_port*,struct inet_port_params*,int ) ;

__attribute__((used)) static int
ipv6_create(struct inet_port *port, struct inet_port_params *params)
{
 if (params->addr_len != 16)
  return (SNMP_ERR_INCONS_VALUE);

 const int ret = ipv6_create_common(port, params, 0);
 if (ret != SNMP_ERR_NOERROR)
  return (ret);

 return (SNMP_ERR_NOERROR);
}
