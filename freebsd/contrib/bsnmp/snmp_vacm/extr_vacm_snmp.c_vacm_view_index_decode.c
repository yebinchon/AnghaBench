
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct asn_oid {size_t* subs; int len; } ;


 int ASN_MAXOIDLEN ;
 size_t SNMP_ADM_STR32_SIZ ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int
vacm_view_index_decode(const struct asn_oid *oid, uint sub, char *vname,
   struct asn_oid *view_oid)
{
 uint32_t i;
 int viod_off;

 if (oid->subs[sub] >= SNMP_ADM_STR32_SIZ)
  return (-1);

 for (i = 0; i < oid->subs[sub]; i++)
  vname[i] = oid->subs[sub + i + 1];
 vname[i] = '\0';

 viod_off = sub + oid->subs[sub] + 1;
 if ((view_oid->len = oid->subs[viod_off]) > ASN_MAXOIDLEN)
  return (-1);

 memcpy(&view_oid->subs[0], &oid->subs[viod_off + 1],
     view_oid->len * sizeof(view_oid->subs[0]));

 return (0);
}
