
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct asn_oid {int dummy; } ;


 int index_append_off (struct asn_oid*,int ,struct asn_oid const*,int ) ;

void
index_append(struct asn_oid *var, u_int sub, const struct asn_oid *idx)
{
 index_append_off(var, sub, idx, 0);
}
