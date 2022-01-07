
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nfs4_state_shutdown () ;
 int cancel_rearming_delayed_workqueue (int ,int *) ;
 int destroy_workqueue (int ) ;
 int laundromat_work ;
 int laundry_wq ;
 int locks_end_grace (int *) ;
 int nfs4_lock_state () ;
 int nfs4_release_reclaim () ;
 int nfs4_unlock_state () ;
 int nfsd4_destroy_callback_queue () ;
 int nfsd4_manager ;

void
nfs4_state_shutdown(void)
{
 cancel_rearming_delayed_workqueue(laundry_wq, &laundromat_work);
 destroy_workqueue(laundry_wq);
 locks_end_grace(&nfsd4_manager);
 nfs4_lock_state();
 nfs4_release_reclaim();
 __nfs4_state_shutdown();
 nfs4_unlock_state();
 nfsd4_destroy_callback_queue();
}
