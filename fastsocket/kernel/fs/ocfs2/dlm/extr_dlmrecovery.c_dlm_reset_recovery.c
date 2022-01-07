
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int spinlock; } ;


 int __dlm_reset_recovery (struct dlm_ctxt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void dlm_reset_recovery(struct dlm_ctxt *dlm)
{
 spin_lock(&dlm->spinlock);
 __dlm_reset_recovery(dlm);
 spin_unlock(&dlm->spinlock);
}
