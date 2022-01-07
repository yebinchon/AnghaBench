
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_defact {int tcf_lock; int tcfd_defdata; int tcf_action; } ;
struct tc_defact {int action; } ;


 int SIMP_MAX_DATA ;
 int memset (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static void reset_policy(struct tcf_defact *d, char *defdata,
    struct tc_defact *p)
{
 spin_lock_bh(&d->tcf_lock);
 d->tcf_action = p->action;
 memset(d->tcfd_defdata, 0, SIMP_MAX_DATA);
 strlcpy(d->tcfd_defdata, defdata, SIMP_MAX_DATA);
 spin_unlock_bh(&d->tcf_lock);
}
