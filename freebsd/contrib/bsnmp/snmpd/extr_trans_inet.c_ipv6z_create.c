
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct inet_port_params {int addr_len; int* addr; } ;
struct inet_port {int dummy; } ;


 int SNMP_ERR_INCONS_VALUE ;
 int const SNMP_ERR_NOERROR ;
 int ipv6_create_common (struct inet_port*,struct inet_port_params*,int) ;

__attribute__((used)) static int
ipv6z_create(struct inet_port *port, struct inet_port_params *params)
{
 if (params->addr_len != 20)
  return (SNMP_ERR_INCONS_VALUE);

 u_int scope_id = 0;
 for (u_int i = 16; i < 20; i++) {
  scope_id <<= 8;
  scope_id |= params->addr[i];
 }

 const int ret = ipv6_create_common(port, params, scope_id);
 if (ret != SNMP_ERR_NOERROR)
  return (ret);

 return (SNMP_ERR_NOERROR);
}
