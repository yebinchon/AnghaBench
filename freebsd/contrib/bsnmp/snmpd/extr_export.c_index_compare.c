
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct asn_oid {int dummy; } ;


 int index_compare_off (struct asn_oid const*,int ,struct asn_oid const*,int ) ;

int
index_compare(const struct asn_oid *oid, u_int sub, const struct asn_oid *idx)
{
 return (index_compare_off(oid, sub, idx, 0));
}
