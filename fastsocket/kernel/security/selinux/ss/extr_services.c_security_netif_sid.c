
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int name; } ;
struct ocontext {scalar_t__* sid; int * context; struct ocontext* next; TYPE_1__ u; } ;
struct TYPE_4__ {struct ocontext** ocontexts; } ;


 size_t OCON_NETIF ;
 scalar_t__ SECINITSID_NETIF ;
 int policy_rwlock ;
 TYPE_2__ policydb ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab ;
 int sidtab_context_to_sid (int *,int *,scalar_t__*) ;
 scalar_t__ strcmp (char*,int ) ;

int security_netif_sid(char *name, u32 *if_sid)
{
 int rc = 0;
 struct ocontext *c;

 read_lock(&policy_rwlock);

 c = policydb.ocontexts[OCON_NETIF];
 while (c) {
  if (strcmp(name, c->u.name) == 0)
   break;
  c = c->next;
 }

 if (c) {
  if (!c->sid[0] || !c->sid[1]) {
   rc = sidtab_context_to_sid(&sidtab,
        &c->context[0],
        &c->sid[0]);
   if (rc)
    goto out;
   rc = sidtab_context_to_sid(&sidtab,
         &c->context[1],
         &c->sid[1]);
   if (rc)
    goto out;
  }
  *if_sid = c->sid[0];
 } else
  *if_sid = SECINITSID_NETIF;

out:
 read_unlock(&policy_rwlock);
 return rc;
}
