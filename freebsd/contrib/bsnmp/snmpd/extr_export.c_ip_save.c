
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int* ipaddress; } ;
struct snmp_value {TYPE_2__ v; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct TYPE_3__ {int int1; } ;



int
ip_save(struct snmp_value *value, struct snmp_context *ctx, u_char *valp)
{
 ctx->scratch->int1 = (valp[0] << 24) | (valp[1] << 16) | (valp[2] << 8)
     | valp[3];

 valp[0] = value->v.ipaddress[0];
 valp[1] = value->v.ipaddress[1];
 valp[2] = value->v.ipaddress[2];
 valp[3] = value->v.ipaddress[3];

 return (0);
}
