
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct transport {int table; } ;
struct tport {int dummy; } ;
struct asn_oid {int dummy; } ;


 struct tport* FIND_OBJECT_OID (int *,struct asn_oid const*,int ) ;

struct tport *
trans_find_port(struct transport *t, const struct asn_oid *idx, u_int sub)
{

 return (FIND_OBJECT_OID(&t->table, idx, sub));
}
