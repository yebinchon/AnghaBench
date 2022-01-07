
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int len; int octets; } ;
struct TYPE_4__ {int counter64; int uint32; int ipaddress; int oid; TYPE_1__ octetstring; int integer; } ;
struct snmp_value {int syntax; TYPE_2__ v; int var; } ;
struct asn_buf {int dummy; } ;
typedef enum asn_err { ____Placeholder_asn_err } asn_err ;


 int ASN_APP_COUNTER ;
 int ASN_APP_GAUGE ;
 int ASN_APP_TIMETICKS ;
 int ASN_ERR_OK ;
 int ASN_EXCEPT_ENDOFMIBVIEW ;
 int ASN_EXCEPT_NOSUCHINSTANCE ;
 int ASN_EXCEPT_NOSUCHOBJECT ;
 int ASN_TYPE_CONSTRUCTED ;
 int ASN_TYPE_SEQUENCE ;
 int asn_commit_header (struct asn_buf*,int *,int *) ;
 int asn_put_counter64 (struct asn_buf*,int ) ;
 int asn_put_exception (struct asn_buf*,int ) ;
 int asn_put_integer (struct asn_buf*,int ) ;
 int asn_put_ipaddress (struct asn_buf*,int ) ;
 int asn_put_null (struct asn_buf*) ;
 int asn_put_objid (struct asn_buf*,int *) ;
 int asn_put_octetstring (struct asn_buf*,int ,int ) ;
 int asn_put_temp_header (struct asn_buf*,int,int **) ;
 int asn_put_uint32 (struct asn_buf*,int ,int ) ;

enum asn_err
snmp_binding_encode(struct asn_buf *b, const struct snmp_value *binding)
{
 u_char *ptr;
 enum asn_err err;
 struct asn_buf save = *b;

 if ((err = asn_put_temp_header(b, (ASN_TYPE_SEQUENCE |
     ASN_TYPE_CONSTRUCTED), &ptr)) != ASN_ERR_OK) {
  *b = save;
  return (err);
 }

 if ((err = asn_put_objid(b, &binding->var)) != ASN_ERR_OK) {
  *b = save;
  return (err);
 }

 switch (binding->syntax) {

   case 131:
  err = asn_put_null(b);
  break;

   case 135:
  err = asn_put_integer(b, binding->v.integer);
  break;

   case 130:
  err = asn_put_octetstring(b, binding->v.octetstring.octets,
      binding->v.octetstring.len);
  break;

   case 129:
  err = asn_put_objid(b, &binding->v.oid);
  break;

   case 134:
  err = asn_put_ipaddress(b, binding->v.ipaddress);
  break;

   case 128:
  err = asn_put_uint32(b, ASN_APP_TIMETICKS, binding->v.uint32);
  break;

   case 139:
  err = asn_put_uint32(b, ASN_APP_COUNTER, binding->v.uint32);
  break;

   case 136:
  err = asn_put_uint32(b, ASN_APP_GAUGE, binding->v.uint32);
  break;

   case 138:
  err = asn_put_counter64(b, binding->v.counter64);
  break;

   case 132:
  err = asn_put_exception(b, ASN_EXCEPT_NOSUCHOBJECT);
  break;

   case 133:
  err = asn_put_exception(b, ASN_EXCEPT_NOSUCHINSTANCE);
  break;

   case 137:
  err = asn_put_exception(b, ASN_EXCEPT_ENDOFMIBVIEW);
  break;
 }

 if (err != ASN_ERR_OK) {
  *b = save;
  return (err);
 }

 err = asn_commit_header(b, ptr, ((void*)0));
 if (err != ASN_ERR_OK) {
  *b = save;
  return (err);
 }

 return (ASN_ERR_OK);
}
