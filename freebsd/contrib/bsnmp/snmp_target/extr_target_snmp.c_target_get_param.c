
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct target_param {int name; } ;
struct asn_oid {int dummy; } ;


 int SNMP_ADM_STR32_SIZ ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ target_decode_index (struct asn_oid const*,int ,char*) ;
 struct target_param* target_first_param () ;
 struct target_param* target_next_param (struct target_param*) ;

__attribute__((used)) static struct target_param *
target_get_param(const struct asn_oid *oid, uint sub)
{
 char pname[SNMP_ADM_STR32_SIZ];
 struct target_param *param;

 if (target_decode_index(oid, sub, pname) < 0)
  return (((void*)0));

 for (param = target_first_param(); param != ((void*)0);
     param = target_next_param(param))
  if (strcmp(pname, param->name) == 0)
   return (param);

 return (((void*)0));
}
