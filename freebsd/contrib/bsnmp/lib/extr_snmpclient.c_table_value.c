
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int uint32_t ;
typedef size_t u_int ;
typedef char u_char ;
struct asn_oid {int dummy; } ;
struct TYPE_8__ {int len; int octets; } ;
struct TYPE_10__ {size_t counter64; int uint32; int ipaddress; struct asn_oid oid; TYPE_3__ octetstring; int integer; } ;
struct TYPE_6__ {scalar_t__* subs; } ;
struct snmp_value {scalar_t__ syntax; TYPE_5__ v; TYPE_1__ var; } ;
struct TYPE_7__ {int len; } ;
struct snmp_table {size_t index_size; TYPE_4__* entries; TYPE_2__ table; } ;
struct entry {size_t found; } ;
typedef int int32_t ;
struct TYPE_9__ {scalar_t__ syntax; scalar_t__ subid; int offset; } ;
 int abort () ;
 char* malloc (int ) ;
 int memcpy (char*,int ,int) ;
 int seterr (int *,char*,...) ;
 int snmp_client ;

__attribute__((used)) static int
table_value(const struct snmp_table *descr, struct entry *e,
    const struct snmp_value *b)
{
 u_int i;
 u_char *ptr;

 for (i = descr->index_size;
     descr->entries[i].syntax != 131; i++)
  if (descr->entries[i].subid ==
      b->var.subs[descr->table.len + 1])
   break;
 if (descr->entries[i].syntax == 131)
  return (0);


 if (b->syntax != descr->entries[i].syntax) {
  seterr(&snmp_client, "bad syntax (%u instead of %u)", b->syntax,
      descr->entries[i].syntax);
  return (-1);
 }

 switch (b->syntax) {

   case 135:
  *(int32_t *)(void *)((u_char *)e + descr->entries[i].offset) =
      b->v.integer;
  break;

   case 130:
  if ((ptr = malloc(b->v.octetstring.len + 1)) == ((void*)0)) {
   seterr(&snmp_client, "no memory for string");
   return (-1);
  }
  memcpy(ptr, b->v.octetstring.octets, b->v.octetstring.len);
  ptr[b->v.octetstring.len] = '\0';
  *(u_char **)(void *)((u_char *)e + descr->entries[i].offset) =
      ptr;
  *(size_t *)(void *)((u_char *)e + descr->entries[i].offset +
      sizeof(u_char *)) = b->v.octetstring.len;
  break;

   case 129:
  *(struct asn_oid *)(void *)((u_char *)e + descr->entries[i].offset) =
      b->v.oid;
  break;

   case 134:
  memcpy((u_char *)e + descr->entries[i].offset,
      b->v.ipaddress, 4);
  break;

   case 139:
   case 136:
   case 128:
  *(uint32_t *)(void *)((u_char *)e + descr->entries[i].offset) =
      b->v.uint32;
  break;

   case 138:
  *(uint64_t *)(void *)((u_char *)e + descr->entries[i].offset) =
      b->v.counter64;
  break;

   case 131:
   case 132:
   case 133:
   case 137:
  abort();
 }
 e->found |= (uint64_t)1 << i;

 return (0);
}
