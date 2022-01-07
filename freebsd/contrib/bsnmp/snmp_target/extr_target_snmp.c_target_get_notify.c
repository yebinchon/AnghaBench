
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct target_notify {int name; } ;
struct asn_oid {int dummy; } ;


 int SNMP_ADM_STR32_SIZ ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ target_decode_index (struct asn_oid const*,int ,char*) ;
 struct target_notify* target_first_notify () ;
 struct target_notify* target_next_notify (struct target_notify*) ;

__attribute__((used)) static struct target_notify *
target_get_notify(const struct asn_oid *oid, uint sub)
{
 char nname[SNMP_ADM_STR32_SIZ];
 struct target_notify *notify;

 if (target_decode_index(oid, sub, nname) < 0)
  return (((void*)0));

 for (notify = target_first_notify(); notify != ((void*)0);
     notify = target_next_notify(notify))
  if (strcmp(nname, notify->name) == 0)
   return (notify);

 return (((void*)0));
}
