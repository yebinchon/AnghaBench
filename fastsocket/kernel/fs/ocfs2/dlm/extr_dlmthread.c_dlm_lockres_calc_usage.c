
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dlm_lock_resource {int spinlock; TYPE_1__ lockname; } ;
struct dlm_ctxt {int spinlock; } ;


 int __dlm_lockres_calc_usage (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int mlog_entry (char*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_lockres_calc_usage(struct dlm_ctxt *dlm,
       struct dlm_lock_resource *res)
{
 mlog_entry("%.*s\n", res->lockname.len, res->lockname.name);
 spin_lock(&dlm->spinlock);
 spin_lock(&res->spinlock);

 __dlm_lockres_calc_usage(dlm, res);

 spin_unlock(&res->spinlock);
 spin_unlock(&dlm->spinlock);
}
