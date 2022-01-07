
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_state; } ;


 int NFS4CLNT_CHECK_LEASE ;
 int NFS4CLNT_LEASE_EXPIRED ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void nfs4_schedule_lease_recovery(struct nfs_client *clp)
{
 if (!clp)
  return;
 if (!test_bit(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
  set_bit(NFS4CLNT_CHECK_LEASE, &clp->cl_state);
 nfs4_schedule_state_manager(clp);
}
