
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct nfs_client {int cl_state; int cl_confirm; int cl_clientid; TYPE_1__ cl_addr; } ;
struct nfs4_setclientid_res {int confirm; int clientid; } ;


 scalar_t__ AF_INET6 ;
 int NFS4CLNT_LEASE_CONFIRM ;
 int NFS4_CALLBACK ;
 int clear_bit (int ,int *) ;
 int nfs4_proc_setclientid (struct nfs_client*,int ,unsigned short,struct rpc_cred*,struct nfs4_setclientid_res*) ;
 int nfs4_proc_setclientid_confirm (struct nfs_client*,struct nfs4_setclientid_res*,struct rpc_cred*) ;
 int nfs4_schedule_state_renewal (struct nfs_client*) ;
 unsigned short nfs_callback_tcpport ;
 unsigned short nfs_callback_tcpport6 ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int nfs4_init_clientid(struct nfs_client *clp, struct rpc_cred *cred)
{
 struct nfs4_setclientid_res clid = {
  .clientid = clp->cl_clientid,
  .confirm = clp->cl_confirm,
 };
 unsigned short port;
 int status;

 if (test_bit(NFS4CLNT_LEASE_CONFIRM, &clp->cl_state))
  goto do_confirm;
 port = nfs_callback_tcpport;
 if (clp->cl_addr.ss_family == AF_INET6)
  port = nfs_callback_tcpport6;

 status = nfs4_proc_setclientid(clp, NFS4_CALLBACK, port, cred, &clid);
 if (status != 0)
  goto out;
 clp->cl_clientid = clid.clientid;
 clp->cl_confirm = clid.confirm;
 set_bit(NFS4CLNT_LEASE_CONFIRM, &clp->cl_state);
do_confirm:
 status = nfs4_proc_setclientid_confirm(clp, &clid, cred);
 if (status != 0)
  goto out;
 clear_bit(NFS4CLNT_LEASE_CONFIRM, &clp->cl_state);
 nfs4_schedule_state_renewal(clp);
out:
 return status;
}
