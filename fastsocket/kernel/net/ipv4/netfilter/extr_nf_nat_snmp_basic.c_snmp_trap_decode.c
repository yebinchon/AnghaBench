
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_v1_trap {unsigned long* id; scalar_t__ ip_address; int time; int specific; int general; int id_len; } ;
struct oct1_map {int dummy; } ;
struct asn1_ctx {scalar_t__ pointer; int begin; } ;
typedef int __sum16 ;


 unsigned int ASN1_APL ;
 unsigned int ASN1_INT ;
 unsigned int ASN1_OJI ;
 unsigned int ASN1_OTS ;
 unsigned int ASN1_PRI ;
 unsigned int ASN1_UNI ;
 unsigned int SNMP_IPA ;
 unsigned int SNMP_TIT ;
 int asn1_header_decode (struct asn1_ctx*,unsigned char**,unsigned int*,unsigned int*,unsigned int*) ;
 int asn1_octets_decode (struct asn1_ctx*,unsigned char*,unsigned char**,unsigned int*) ;
 int asn1_oid_decode (struct asn1_ctx*,unsigned char*,unsigned long**,int *) ;
 int asn1_uint_decode (struct asn1_ctx*,unsigned char*,int *) ;
 int asn1_ulong_decode (struct asn1_ctx*,unsigned char*,int *) ;
 int kfree (unsigned long*) ;
 int mangle_address (int ,scalar_t__,struct oct1_map const*,int *) ;

__attribute__((used)) static unsigned char snmp_trap_decode(struct asn1_ctx *ctx,
          struct snmp_v1_trap *trap,
          const struct oct1_map *map,
          __sum16 *check)
{
 unsigned int cls, con, tag, len;
 unsigned char *end;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  return 0;

 if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_OJI)
  return 0;

 if (!asn1_oid_decode(ctx, end, &trap->id, &trap->id_len))
  return 0;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  goto err_id_free;

 if (!((cls == ASN1_APL && con == ASN1_PRI && tag == SNMP_IPA) ||
       (cls == ASN1_UNI && con == ASN1_PRI && tag == ASN1_OTS)))
  goto err_id_free;

 if (!asn1_octets_decode(ctx, end, (unsigned char **)&trap->ip_address, &len))
  goto err_id_free;


 if (len != 4)
  goto err_addr_free;

 mangle_address(ctx->begin, ctx->pointer - 4, map, check);

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  goto err_addr_free;

 if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
  goto err_addr_free;

 if (!asn1_uint_decode(ctx, end, &trap->general))
  goto err_addr_free;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  goto err_addr_free;

 if (cls != ASN1_UNI || con != ASN1_PRI || tag != ASN1_INT)
  goto err_addr_free;

 if (!asn1_uint_decode(ctx, end, &trap->specific))
  goto err_addr_free;

 if (!asn1_header_decode(ctx, &end, &cls, &con, &tag))
  goto err_addr_free;

 if (!((cls == ASN1_APL && con == ASN1_PRI && tag == SNMP_TIT) ||
       (cls == ASN1_UNI && con == ASN1_PRI && tag == ASN1_INT)))
  goto err_addr_free;

 if (!asn1_ulong_decode(ctx, end, &trap->time))
  goto err_addr_free;

 return 1;

err_addr_free:
 kfree((unsigned long *)trap->ip_address);

err_id_free:
 kfree(trap->id);

 return 0;
}
