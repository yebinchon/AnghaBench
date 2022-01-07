
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ protocol; scalar_t__ low_port; scalar_t__ high_port; } ;
struct TYPE_5__ {TYPE_1__ port; } ;
struct ocontext {scalar_t__* sid; int * context; struct ocontext* next; TYPE_2__ u; } ;
struct TYPE_6__ {struct ocontext** ocontexts; } ;


 size_t OCON_PORT ;
 scalar_t__ SECINITSID_PORT ;
 int policy_rwlock ;
 TYPE_3__ policydb ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab ;
 int sidtab_context_to_sid (int *,int *,scalar_t__*) ;

int security_port_sid(u8 protocol, u16 port, u32 *out_sid)
{
 struct ocontext *c;
 int rc = 0;

 read_lock(&policy_rwlock);

 c = policydb.ocontexts[OCON_PORT];
 while (c) {
  if (c->u.port.protocol == protocol &&
      c->u.port.low_port <= port &&
      c->u.port.high_port >= port)
   break;
  c = c->next;
 }

 if (c) {
  if (!c->sid[0]) {
   rc = sidtab_context_to_sid(&sidtab,
         &c->context[0],
         &c->sid[0]);
   if (rc)
    goto out;
  }
  *out_sid = c->sid[0];
 } else {
  *out_sid = SECINITSID_PORT;
 }

out:
 read_unlock(&policy_rwlock);
 return rc;
}
