
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asn_oid {int dummy; } ;
struct TYPE_2__ {struct asn_oid oid; } ;
struct snmp_value {TYPE_1__ v; } ;


 int SNMP_ERR_NOERROR ;

int
oid_get(struct snmp_value *value, const struct asn_oid *oid)
{
 value->v.oid = *oid;
 return (SNMP_ERR_NOERROR);
}
