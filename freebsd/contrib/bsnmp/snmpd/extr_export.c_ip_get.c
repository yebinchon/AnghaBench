
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_char ;
struct TYPE_2__ {void** ipaddress; } ;
struct snmp_value {TYPE_1__ v; } ;


 int SNMP_ERR_NOERROR ;

int
ip_get(struct snmp_value *value, u_char *valp)
{
 value->v.ipaddress[0] = valp[0];
 value->v.ipaddress[1] = valp[1];
 value->v.ipaddress[2] = valp[2];
 value->v.ipaddress[3] = valp[3];

 return (SNMP_ERR_NOERROR);
}
