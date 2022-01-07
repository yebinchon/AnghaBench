
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct asn_oid {size_t len; int* subs; } ;


 int SNMP_ADM_STR32_SIZ ;

__attribute__((used)) static int
target_decode_index(const struct asn_oid *oid, uint sub, char *name)
{
 uint32_t i;

 if (oid->len - sub != oid->subs[sub] + 1 || oid->subs[sub] >=
     SNMP_ADM_STR32_SIZ)
  return (-1);

 for (i = 0; i < oid->subs[sub]; i++)
  name[i] = oid->subs[sub + i + 1];
 name[i] = '\0';

 return (0);
}
