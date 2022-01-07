
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_context {TYPE_1__* scratch; } ;
struct TYPE_2__ {int ptr1; } ;


 int free (int ) ;

void
oid_commit(struct snmp_context *ctx)
{
 free(ctx->scratch->ptr1);
}
