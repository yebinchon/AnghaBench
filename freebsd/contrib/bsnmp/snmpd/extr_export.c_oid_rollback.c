
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snmp_context {TYPE_1__* scratch; } ;
struct asn_oid {int dummy; } ;
struct TYPE_2__ {scalar_t__ ptr1; } ;


 int free (scalar_t__) ;

void
oid_rollback(struct snmp_context *ctx, struct asn_oid *oid)
{
 *oid = *(struct asn_oid *)ctx->scratch->ptr1;
 free(ctx->scratch->ptr1);
}
