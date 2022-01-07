
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {int len; int* octets; } ;
struct TYPE_4__ {int integer; int uint32; int counter64; int * ipaddress; int oid; TYPE_1__ octetstring; } ;
struct snmp_value {int syntax; TYPE_2__ v; int var; } ;


 int ASN_OIDSTRLEN ;
 int asn_oid2str_r (int *,char*) ;
 int snmp_printf (char*,...) ;

__attribute__((used)) static void
dump_binding(const struct snmp_value *b)
{
 u_int i;
 char buf[ASN_OIDSTRLEN];

 snmp_printf("%s=", asn_oid2str_r(&b->var, buf));
 switch (b->syntax) {

   case 131:
  snmp_printf("NULL");
  break;

   case 135:
  snmp_printf("INTEGER %d", b->v.integer);
  break;

   case 130:
  snmp_printf("OCTET STRING %lu:", b->v.octetstring.len);
  for (i = 0; i < b->v.octetstring.len; i++)
   snmp_printf(" %02x", b->v.octetstring.octets[i]);
  break;

   case 129:
  snmp_printf("OID %s", asn_oid2str_r(&b->v.oid, buf));
  break;

   case 134:
  snmp_printf("IPADDRESS %u.%u.%u.%u", b->v.ipaddress[0],
      b->v.ipaddress[1], b->v.ipaddress[2], b->v.ipaddress[3]);
  break;

   case 139:
  snmp_printf("COUNTER %u", b->v.uint32);
  break;

   case 136:
  snmp_printf("GAUGE %u", b->v.uint32);
  break;

   case 128:
  snmp_printf("TIMETICKS %u", b->v.uint32);
  break;

   case 138:
  snmp_printf("COUNTER64 %lld", b->v.counter64);
  break;

   case 132:
  snmp_printf("NoSuchObject");
  break;

   case 133:
  snmp_printf("NoSuchInstance");
  break;

   case 137:
  snmp_printf("EndOfMibView");
  break;

   default:
  snmp_printf("UNKNOWN SYNTAX %u", b->syntax);
  break;
 }
}
