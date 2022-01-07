
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asn_oid {int dummy; } ;
struct TYPE_4__ {struct asn_oid oid; } ;
struct snmp_value {TYPE_2__ v; } ;
struct snmp_context {TYPE_1__* scratch; } ;
struct TYPE_3__ {int * ptr1; } ;


 int SNMP_ERR_RES_UNAVAIL ;
 int * malloc (int) ;

int
oid_save(struct snmp_value *value, struct snmp_context *ctx,
    struct asn_oid *oid)
{
 if ((ctx->scratch->ptr1 = malloc(sizeof(struct asn_oid))) == ((void*)0))
  return (SNMP_ERR_RES_UNAVAIL);
 *(struct asn_oid *)ctx->scratch->ptr1 = *oid;
 *oid = value->v.oid;

 return (0);
}
