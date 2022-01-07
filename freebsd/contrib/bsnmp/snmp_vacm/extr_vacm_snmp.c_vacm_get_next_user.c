
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct vacm_user {scalar_t__ sec_model; int secname; } ;
struct asn_oid {scalar_t__ len; } ;
typedef scalar_t__ int32_t ;


 int SNMP_ADM_STR32_SIZ ;
 scalar_t__ strcmp (char*,int ) ;
 struct vacm_user* vacm_first_user () ;
 struct vacm_user* vacm_next_user (struct vacm_user*) ;
 scalar_t__ vacm_user_index_decode (struct asn_oid const*,scalar_t__,scalar_t__*,char*) ;

__attribute__((used)) static struct vacm_user *
vacm_get_next_user(const struct asn_oid *oid, uint sub)
{
 int32_t smodel;
 char uname[SNMP_ADM_STR32_SIZ];
 struct vacm_user *user;

 if (oid->len - sub == 0)
  return (vacm_first_user());

 if (vacm_user_index_decode(oid, sub, &smodel, uname) < 0)
  return (((void*)0));

 for (user = vacm_first_user(); user != ((void*)0); user = vacm_next_user(user))
  if (strcmp(uname, user->secname) == 0 &&
      user->sec_model == smodel)
   return (vacm_next_user(user));

 return (((void*)0));
}
