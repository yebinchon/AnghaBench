
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct vacm_user {size_t* secname; size_t sec_model; } ;
struct asn_oid {size_t len; size_t* subs; } ;


 size_t strlen (size_t*) ;

__attribute__((used)) static void
vacm_append_userindex(struct asn_oid *oid, uint sub,
    const struct vacm_user *user)
{
 uint32_t i;

 oid->len = sub + strlen(user->secname) + 2;
 oid->subs[sub++] = user->sec_model;
 oid->subs[sub] = strlen(user->secname);
 for (i = 1; i <= strlen(user->secname); i++)
  oid->subs[sub + i] = user->secname[i - 1];
}
