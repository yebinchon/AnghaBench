
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cred {int usage; } ;
struct TYPE_2__ {struct cred* cred; } ;


 int alter_cred_subscribers (struct cred const*,int) ;
 int atomic_read (int *) ;
 TYPE_1__* current ;
 int kdebug (char*,struct cred const*,int ,int ) ;
 int put_cred (struct cred const*) ;
 int rcu_assign_pointer (struct cred*,struct cred const*) ;
 int read_cred_subscribers (struct cred const*) ;
 int validate_creds (struct cred const*) ;

void revert_creds(const struct cred *old)
{
 const struct cred *override = current->cred;

 kdebug("revert_creds(%p{%d,%d})", old,
        atomic_read(&old->usage),
        read_cred_subscribers(old));

 validate_creds(old);
 validate_creds(override);
 alter_cred_subscribers(old, 1);
 rcu_assign_pointer(current->cred, old);
 alter_cred_subscribers(override, -1);
 put_cred(override);
}
