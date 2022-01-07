
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct asn_oid {size_t* subs; } ;
typedef size_t int32_t ;


 size_t SNMP_ADM_STR32_SIZ ;

__attribute__((used)) static int
vacm_user_index_decode(const struct asn_oid *oid, uint sub,
    int32_t *smodel, char *uname)
{
 uint32_t i;

 *smodel = oid->subs[sub++];

 if (oid->subs[sub] >= SNMP_ADM_STR32_SIZ)
  return (-1);

 for (i = 0; i < oid->subs[sub]; i++)
  uname[i] = oid->subs[sub + i + 1];
 uname[i] = '\0';

 return (0);
}
