
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct vacm_access {scalar_t__ sec_model; scalar_t__ sec_level; int ctx_prefix; TYPE_1__* group; } ;
struct asn_oid {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int groupname; } ;


 int SNMP_ADM_STR32_SIZ ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ vacm_access_rule_index_decode (struct asn_oid const*,int ,char*,char*,scalar_t__*,scalar_t__*) ;
 struct vacm_access* vacm_first_access_rule () ;
 struct vacm_access* vacm_next_access_rule (struct vacm_access*) ;

struct vacm_access *
vacm_get_access_rule(const struct asn_oid *oid, uint sub)
{
 int32_t smodel, slevel;
 char gname[SNMP_ADM_STR32_SIZ], prefix[SNMP_ADM_STR32_SIZ];
 struct vacm_access *acl;

 if (vacm_access_rule_index_decode(oid, sub, gname, prefix, &smodel,
     &slevel) < 0)
  return (((void*)0));

 for (acl = vacm_first_access_rule(); acl != ((void*)0);
     acl = vacm_next_access_rule(acl))
  if (strcmp(gname, acl->group->groupname) == 0 &&
      strcmp(prefix, acl->ctx_prefix) == 0 &&
      smodel == acl->sec_model && slevel == acl->sec_level)
   return (acl);

 return (((void*)0));
}
