
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {unsigned long cl_last_renewal; int cl_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void do_renew_lease(struct nfs_client *clp, unsigned long timestamp)
{
 spin_lock(&clp->cl_lock);
 if (time_before(clp->cl_last_renewal,timestamp))
  clp->cl_last_renewal = timestamp;
 spin_unlock(&clp->cl_lock);
}
