
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_lock_resource {int state; int spinlock; } ;
struct dlm_ctxt {int spinlock; int domain_map; } ;


 int DLM_LOCK_RES_MIGRATING ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int dlm_migration_can_proceed(struct dlm_ctxt *dlm,
         struct dlm_lock_resource *res,
         u8 mig_target)
{
 int can_proceed;
 spin_lock(&res->spinlock);
 can_proceed = !!(res->state & DLM_LOCK_RES_MIGRATING);
 spin_unlock(&res->spinlock);



 spin_lock(&dlm->spinlock);
 if (!test_bit(mig_target, dlm->domain_map))
  can_proceed = 1;
 spin_unlock(&dlm->spinlock);
 return can_proceed;
}
