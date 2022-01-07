
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_state; } ;


 int NFS4CLNT_DELEGRETURN ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs_delegation_run_state_manager(struct nfs_client *clp)
{
 if (test_bit(NFS4CLNT_DELEGRETURN, &clp->cl_state))
  nfs4_schedule_state_manager(clp);
}
