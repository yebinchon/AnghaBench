
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_timeout {int dummy; } ;
struct nfs_client_initdata {TYPE_1__* rpc_ops; scalar_t__ hostname; } ;
struct nfs_client {scalar_t__ cl_cons_state; int cl_share_link; } ;
typedef int rpc_authflavor_t ;
struct TYPE_2__ {int (* init_client ) (struct nfs_client*,struct rpc_timeout const*,char const*,int ,int) ;int version; } ;


 int BUG_ON (int) ;
 int ERESTARTSYS ;
 struct nfs_client* ERR_PTR (int) ;
 int IS_ERR (struct nfs_client*) ;
 scalar_t__ NFS_CS_INITING ;
 scalar_t__ NFS_CS_READY ;
 struct nfs_client* PTR_ERR (struct nfs_client*) ;
 int dprintk (char*,...) ;
 int list_add (int *,int *) ;
 struct nfs_client* nfs_alloc_client (struct nfs_client_initdata const*) ;
 int nfs_client_active_wq ;
 int nfs_client_list ;
 int nfs_client_lock ;
 int nfs_free_client (struct nfs_client*) ;
 struct nfs_client* nfs_match_client (struct nfs_client_initdata const*) ;
 int nfs_put_client (struct nfs_client*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_client*,struct rpc_timeout const*,char const*,int ,int) ;
 int wait_event_killable (int ,int) ;

__attribute__((used)) static struct nfs_client *
nfs_get_client(const struct nfs_client_initdata *cl_init,
        const struct rpc_timeout *timeparms,
        const char *ip_addr,
        rpc_authflavor_t authflavour,
        int noresvport)
{
 struct nfs_client *clp, *new = ((void*)0);
 int error;

 dprintk("--> nfs_get_client(%s,v%u)\n",
  cl_init->hostname ?: "", cl_init->rpc_ops->version);


 do {
  spin_lock(&nfs_client_lock);

  clp = nfs_match_client(cl_init);
  if (clp)
   goto found_client;
  if (new)
   goto install_client;

  spin_unlock(&nfs_client_lock);

  new = nfs_alloc_client(cl_init);
 } while (!IS_ERR(new));

 dprintk("--> nfs_get_client() = %ld [failed]\n", PTR_ERR(new));
 return new;


install_client:
 clp = new;
 list_add(&clp->cl_share_link, &nfs_client_list);
 spin_unlock(&nfs_client_lock);

 error = cl_init->rpc_ops->init_client(clp, timeparms, ip_addr,
           authflavour, noresvport);
 if (error < 0) {
  nfs_put_client(clp);
  return ERR_PTR(error);
 }
 dprintk("--> nfs_get_client() = %p [new]\n", clp);
 return clp;




found_client:
 spin_unlock(&nfs_client_lock);

 if (new)
  nfs_free_client(new);

 error = wait_event_killable(nfs_client_active_wq,
    clp->cl_cons_state < NFS_CS_INITING);
 if (error < 0) {
  nfs_put_client(clp);
  return ERR_PTR(-ERESTARTSYS);
 }

 if (clp->cl_cons_state < NFS_CS_READY) {
  error = clp->cl_cons_state;
  nfs_put_client(clp);
  return ERR_PTR(error);
 }

 BUG_ON(clp->cl_cons_state != NFS_CS_READY);

 dprintk("--> nfs_get_client() = %p [share]\n", clp);
 return clp;
}
