
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_netobj {int dummy; } ;
struct svc_rqst {int rq_cred; int rq_flavor; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int cb_work; } ;
struct nfs4_client {int * cl_cb_session; int cl_cred; int cl_flavor; int cl_addr; int cl_cb_waitq; int cl_cb_slot_busy; int cl_time; TYPE_1__ cl_cb_null; int cl_lock; int cl_lru; int cl_delegations; int cl_openowners; int cl_strhash; int cl_idhash; int cl_cb_set; int cl_refcount; int cl_recdir; int * cl_principal; int cl_sessions; } ;
typedef int nfs4_verifier ;


 int GFP_KERNEL ;
 int HEXDIR_LEN ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 struct nfs4_client* alloc_client (struct xdr_netobj) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int copy_cred (int *,int *) ;
 int copy_verf (struct nfs4_client*,int *) ;
 int free_client (struct nfs4_client*) ;
 int gen_confirm (struct nfs4_client*) ;
 int get_seconds () ;
 int * kstrdup (char*,int ) ;
 int memcpy (int ,char*,int ) ;
 int nfsd4_do_callback_rpc ;
 int rpc_copy_addr (struct sockaddr*,struct sockaddr*) ;
 int rpc_init_wait_queue (int *,char*) ;
 int spin_lock_init (int *) ;
 struct sockaddr* svc_addr (struct svc_rqst*) ;
 char* svc_gss_principal (struct svc_rqst*) ;

__attribute__((used)) static struct nfs4_client *create_client(struct xdr_netobj name, char *recdir,
  struct svc_rqst *rqstp, nfs4_verifier *verf)
{
 struct nfs4_client *clp;
 struct sockaddr *sa = svc_addr(rqstp);
 char *princ;

 clp = alloc_client(name);
 if (clp == ((void*)0))
  return ((void*)0);

 INIT_LIST_HEAD(&clp->cl_sessions);

 princ = svc_gss_principal(rqstp);
 if (princ) {
  clp->cl_principal = kstrdup(princ, GFP_KERNEL);
  if (clp->cl_principal == ((void*)0)) {
   free_client(clp);
   return ((void*)0);
  }
 }

 memcpy(clp->cl_recdir, recdir, HEXDIR_LEN);
 atomic_set(&clp->cl_refcount, 0);
 atomic_set(&clp->cl_cb_set, 0);
 INIT_LIST_HEAD(&clp->cl_idhash);
 INIT_LIST_HEAD(&clp->cl_strhash);
 INIT_LIST_HEAD(&clp->cl_openowners);
 INIT_LIST_HEAD(&clp->cl_delegations);
 INIT_LIST_HEAD(&clp->cl_lru);
 spin_lock_init(&clp->cl_lock);
 INIT_WORK(&clp->cl_cb_null.cb_work, nfsd4_do_callback_rpc);
 clp->cl_time = get_seconds();
 clear_bit(0, &clp->cl_cb_slot_busy);
 rpc_init_wait_queue(&clp->cl_cb_waitq, "Backchannel slot table");
 copy_verf(clp, verf);
 rpc_copy_addr((struct sockaddr *) &clp->cl_addr, sa);
 clp->cl_flavor = rqstp->rq_flavor;
 copy_cred(&clp->cl_cred, &rqstp->rq_cred);
 gen_confirm(clp);
 clp->cl_cb_session = ((void*)0);
 return clp;
}
