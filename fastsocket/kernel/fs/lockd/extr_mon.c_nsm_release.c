
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsm_handle {int sm_addrbuf; int sm_name; int sm_link; int sm_count; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int dprintk (char*,int ,int ) ;
 int kfree (struct nsm_handle*) ;
 int list_del (int *) ;
 int nsm_lock ;
 int spin_unlock (int *) ;

void nsm_release(struct nsm_handle *nsm)
{
 if (atomic_dec_and_lock(&nsm->sm_count, &nsm_lock)) {
  list_del(&nsm->sm_link);
  spin_unlock(&nsm_lock);
  dprintk("lockd: destroyed nsm_handle for %s (%s)\n",
    nsm->sm_name, nsm->sm_addrbuf);
  kfree(nsm);
 }
}
