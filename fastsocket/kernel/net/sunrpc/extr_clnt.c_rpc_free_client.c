
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct rpc_clnt {scalar_t__ cl_server; scalar_t__ cl_inline_name; int cl_xprt; int * cl_metrics; struct rpc_clnt* cl_principal; struct rpc_clnt* cl_parent; TYPE_1__ cl_path; int cl_protname; } ;


 int IS_ERR (int ) ;
 int dprintk (char*,int ,scalar_t__) ;
 int kfree (struct rpc_clnt*) ;
 int rpc_free_iostats (int *) ;
 int rpc_put_mount () ;
 int rpc_release_client (struct rpc_clnt*) ;
 int rpc_remove_client_dir (int ) ;
 int rpc_unregister_client (struct rpc_clnt*) ;
 int rpciod_down () ;
 int xprt_put (int ) ;

__attribute__((used)) static void
rpc_free_client(struct rpc_clnt *clnt)
{
 dprintk("RPC:       destroying %s client for %s\n",
   clnt->cl_protname, clnt->cl_server);
 if (!IS_ERR(clnt->cl_path.dentry)) {
  rpc_remove_client_dir(clnt->cl_path.dentry);
  rpc_put_mount();
 }
 if (clnt->cl_parent != clnt) {
  rpc_release_client(clnt->cl_parent);
  goto out_free;
 }
 if (clnt->cl_server != clnt->cl_inline_name)
  kfree(clnt->cl_server);
out_free:
 rpc_unregister_client(clnt);
 rpc_free_iostats(clnt->cl_metrics);
 kfree(clnt->cl_principal);
 clnt->cl_metrics = ((void*)0);
 xprt_put(clnt->cl_xprt);
 rpciod_down();
 kfree(clnt);
}
