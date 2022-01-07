
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct svc_serv {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct nfs_callback_data {int users; struct svc_rqst* task; struct svc_rqst* rqst; struct svc_serv* serv; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct svc_rqst*) ;
 int NFS4_CALLBACK_BUFSIZE ;
 int PTR_ERR (struct svc_rqst*) ;
 int dprintk (char*,int) ;
 struct svc_rqst* kthread_run (int (*) (void*),struct svc_rqst*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs4_callback_program ;
 int nfs4_callback_svc (void*) ;
 struct svc_rqst* nfs4_callback_up (struct svc_serv*) ;
 int nfs_callback_bc_serv (size_t,struct rpc_xprt*,struct nfs_callback_data*) ;
 struct nfs_callback_data* nfs_callback_info ;
 int nfs_callback_mutex ;
 int nfs_minorversion_callback_svc_setup (size_t,struct svc_serv*,struct rpc_xprt*,struct svc_rqst**,int (*) (void*)) ;
 int sprintf (char*,char*,size_t) ;
 struct svc_serv* svc_create (int *,int ,int *) ;
 int svc_destroy (struct svc_serv*) ;
 int svc_exit_thread (struct svc_rqst*) ;
 int svc_sock_update_bufs (struct svc_serv*) ;

int nfs_callback_up(u32 minorversion, struct rpc_xprt *xprt)
{
 struct svc_serv *serv = ((void*)0);
 struct svc_rqst *rqstp;
 int (*callback_svc)(void *vrqstp);
 struct nfs_callback_data *cb_info = &nfs_callback_info[minorversion];
 char svc_name[12];
 int ret = 0;
 int minorversion_setup;

 mutex_lock(&nfs_callback_mutex);
 if (cb_info->users++ || cb_info->task != ((void*)0)) {
  nfs_callback_bc_serv(minorversion, xprt, cb_info);
  goto out;
 }
 serv = svc_create(&nfs4_callback_program, NFS4_CALLBACK_BUFSIZE, ((void*)0));
 if (!serv) {
  ret = -ENOMEM;
  goto out_err;
 }

 minorversion_setup = nfs_minorversion_callback_svc_setup(minorversion,
     serv, xprt, &rqstp, &callback_svc);
 if (!minorversion_setup) {

  rqstp = nfs4_callback_up(serv);
  callback_svc = nfs4_callback_svc;
 }

 if (IS_ERR(rqstp)) {
  ret = PTR_ERR(rqstp);
  goto out_err;
 }

 svc_sock_update_bufs(serv);

 sprintf(svc_name, "nfsv4.%u-svc", minorversion);
 cb_info->serv = serv;
 cb_info->rqst = rqstp;
 cb_info->task = kthread_run(callback_svc, cb_info->rqst, svc_name);
 if (IS_ERR(cb_info->task)) {
  ret = PTR_ERR(cb_info->task);
  svc_exit_thread(cb_info->rqst);
  cb_info->rqst = ((void*)0);
  cb_info->task = ((void*)0);
  goto out_err;
 }
out:






 if (serv)
  svc_destroy(serv);
 mutex_unlock(&nfs_callback_mutex);
 return ret;
out_err:
 dprintk("NFS: Couldn't create callback socket or server thread; "
  "err = %d\n", ret);
 cb_info->users--;
 goto out;
}
