
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct dlm_master_list_entry {TYPE_1__ mle_refs; struct dlm_ctxt* dlm; } ;
struct dlm_ctxt {int master_lock; int spinlock; } ;


 int BUG () ;
 int ML_ERROR ;
 int assert_spin_locked (int *) ;
 int atomic_read (int *) ;
 int dlm_mle_release ;
 int dlm_print_one_mle (struct dlm_master_list_entry*) ;
 int kref_put (TYPE_1__*,int ) ;
 int mlog (int ,char*,struct dlm_master_list_entry*) ;

__attribute__((used)) static void __dlm_put_mle(struct dlm_master_list_entry *mle)
{
 struct dlm_ctxt *dlm;
 dlm = mle->dlm;

 assert_spin_locked(&dlm->spinlock);
 assert_spin_locked(&dlm->master_lock);
 if (!atomic_read(&mle->mle_refs.refcount)) {


  mlog(ML_ERROR, "bad mle: %p\n", mle);
  dlm_print_one_mle(mle);
  BUG();
 } else
  kref_put(&mle->mle_refs, dlm_mle_release);
}
