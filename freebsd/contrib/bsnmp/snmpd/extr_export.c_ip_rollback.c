
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct snmp_context {TYPE_1__* scratch; } ;
struct TYPE_2__ {int int1; } ;



void
ip_rollback(struct snmp_context *ctx, u_char *valp)
{
 valp[0] = ctx->scratch->int1 >> 24;
 valp[1] = ctx->scratch->int1 >> 16;
 valp[2] = ctx->scratch->int1 >> 8;
 valp[3] = ctx->scratch->int1;
}
