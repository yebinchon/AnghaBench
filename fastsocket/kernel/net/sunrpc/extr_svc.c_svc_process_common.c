
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct svc_version {int vs_nproc; int (* vs_dispatch ) (struct svc_rqst*,scalar_t__*) ;struct svc_procedure* vs_proc; } ;
struct svc_serv {TYPE_2__* sv_stats; struct svc_program* sv_program; } ;
struct svc_rqst {int rq_splice_ok; int rq_usedeferral; int rq_dropme; int rq_prog; int rq_vers; int rq_proc; int rq_resp; int rq_argp; struct svc_procedure* rq_procinfo; TYPE_3__* rq_xprt; int rq_xid; struct svc_serv* rq_server; } ;
struct svc_program {int pg_prog; int (* pg_authenticate ) (struct svc_rqst*) ;int pg_nvers; int pg_lovers; int pg_hivers; int pg_name; struct svc_version** pg_vers; struct svc_program* pg_next; } ;
struct svc_procedure {scalar_t__ (* pc_func ) (struct svc_rqst*,int ,int ) ;int pc_xdrressize; int (* pc_encode ) (struct svc_rqst*,void*,int ) ;int (* pc_release ) (struct svc_rqst*,int *,int ) ;int (* pc_decode ) (struct svc_rqst*,void*,int ) ;int pc_ressize; int pc_argsize; int pc_count; } ;
struct kvec {int iov_len; void* iov_base; } ;
typedef int (* kxdrproc_t ) (struct svc_rqst*,void*,int ) ;
typedef scalar_t__ __be32 ;
struct TYPE_6__ {int xpt_flags; TYPE_1__* xpt_ops; } ;
struct TYPE_5__ {int rpcbadfmt; int rpcbadauth; int rpccnt; } ;
struct TYPE_4__ {int (* xpo_prep_reply_hdr ) (struct svc_rqst*) ;} ;


 int RPC_PROC_UNAVAIL ;
 int RPC_PROG_MISMATCH ;
 int RPC_PROG_UNAVAIL ;
 int RPC_SUCCESS ;







 int XPT_TEMP ;
 int dprintk (char*,...) ;
 int memset (int ,int ,int ) ;
 int ntohl (scalar_t__) ;
 scalar_t__ rpc_autherr_badcred ;
 scalar_t__ rpc_garbage_args ;
 scalar_t__ rpc_success ;
 scalar_t__ rpc_system_err ;
 int stub1 (struct svc_rqst*) ;
 int stub2 (struct svc_rqst*) ;
 scalar_t__ stub3 (struct svc_rqst*,int ,int ) ;
 int stub4 (struct svc_rqst*,int *,int ) ;
 int stub5 (struct svc_rqst*,scalar_t__*) ;
 int stub6 (struct svc_rqst*,int *,int ) ;
 int stub7 (struct svc_rqst*,int *,int ) ;
 int svc_authenticate (struct svc_rqst*,scalar_t__*) ;
 scalar_t__ svc_authorise (struct svc_rqst*) ;
 int svc_close_xprt (TYPE_3__*) ;
 int svc_getnl (struct kvec*) ;
 int svc_printk (struct svc_rqst*,char*,...) ;
 int svc_putnl (struct kvec*,int) ;
 int svc_putu32 (struct kvec*,int ) ;
 int svc_reserve_auth (struct svc_rqst*,int) ;
 int test_bit (int ,int *) ;
 int xdr_ressize_check (struct svc_rqst*,scalar_t__*) ;

__attribute__((used)) static int
svc_process_common(struct svc_rqst *rqstp, struct kvec *argv, struct kvec *resv)
{
 struct svc_program *progp;
 struct svc_version *versp = ((void*)0);
 struct svc_procedure *procp = ((void*)0);
 struct svc_serv *serv = rqstp->rq_server;
 kxdrproc_t xdr;
 __be32 *statp;
 u32 prog, vers, proc;
 __be32 auth_stat, rpc_stat;
 int auth_res;
 __be32 *reply_statp;

 rpc_stat = rpc_success;

 if (argv->iov_len < 6*4)
  goto err_short_len;


 rqstp->rq_splice_ok = 1;

 rqstp->rq_usedeferral = 1;
 rqstp->rq_dropme = 0;


 rqstp->rq_xprt->xpt_ops->xpo_prep_reply_hdr(rqstp);

 svc_putu32(resv, rqstp->rq_xid);

 vers = svc_getnl(argv);


 svc_putnl(resv, 1);

 if (vers != 2)
  goto err_bad_rpc;


 reply_statp = resv->iov_base + resv->iov_len;

 svc_putnl(resv, 0);

 rqstp->rq_prog = prog = svc_getnl(argv);
 rqstp->rq_vers = vers = svc_getnl(argv);
 rqstp->rq_proc = proc = svc_getnl(argv);

 progp = serv->sv_program;

 for (progp = serv->sv_program; progp; progp = progp->pg_next)
  if (prog == progp->pg_prog)
   break;






 auth_res = svc_authenticate(rqstp, &auth_stat);

 if (auth_res == 129 && progp) {
  auth_stat = rpc_autherr_badcred;
  auth_res = progp->pg_authenticate(rqstp);
 }
 switch (auth_res) {
 case 129:
  break;
 case 130:
  goto err_garbage;
 case 128:
  rpc_stat = rpc_system_err;
  goto err_bad;
 case 132:
  goto err_bad_auth;
 case 134:
  if (test_bit(XPT_TEMP, &rqstp->rq_xprt->xpt_flags))
   svc_close_xprt(rqstp->rq_xprt);
 case 131:
  goto dropit;
 case 133:
  goto sendit;
 }

 if (progp == ((void*)0))
  goto err_bad_prog;

 if (vers >= progp->pg_nvers ||
   !(versp = progp->pg_vers[vers]))
  goto err_bad_vers;

 procp = versp->vs_proc + proc;
 if (proc >= versp->vs_nproc || !procp->pc_func)
  goto err_bad_proc;
 rqstp->rq_procinfo = procp;


 serv->sv_stats->rpccnt++;


 statp = resv->iov_base +resv->iov_len;
 svc_putnl(resv, RPC_SUCCESS);


 procp->pc_count++;


 memset(rqstp->rq_argp, 0, procp->pc_argsize);
 memset(rqstp->rq_resp, 0, procp->pc_ressize);




 if (procp->pc_xdrressize)
  svc_reserve_auth(rqstp, procp->pc_xdrressize<<2);


 if (!versp->vs_dispatch) {

  xdr = procp->pc_decode;
  if (xdr && !xdr(rqstp, argv->iov_base, rqstp->rq_argp))
   goto err_garbage;

  *statp = procp->pc_func(rqstp, rqstp->rq_argp, rqstp->rq_resp);


  if (rqstp->rq_dropme) {
   if (procp->pc_release)
    procp->pc_release(rqstp, ((void*)0), rqstp->rq_resp);
   goto dropit;
  }
  if (*statp == rpc_success && (xdr = procp->pc_encode)
   && !xdr(rqstp, resv->iov_base+resv->iov_len, rqstp->rq_resp)) {
   dprintk("svc: failed to encode reply\n");

   *statp = rpc_system_err;
  }
 } else {
  dprintk("svc: calling dispatcher\n");
  if (!versp->vs_dispatch(rqstp, statp)) {

   if (procp->pc_release)
    procp->pc_release(rqstp, ((void*)0), rqstp->rq_resp);
   goto dropit;
  }
 }


 if (*statp != rpc_success)
  resv->iov_len = ((void*)statp) - resv->iov_base + 4;


 if (procp->pc_release)
  procp->pc_release(rqstp, ((void*)0), rqstp->rq_resp);

 if (procp->pc_encode == ((void*)0))
  goto dropit;

 sendit:
 if (svc_authorise(rqstp))
  goto dropit;
 return 1;

 dropit:
 svc_authorise(rqstp);
 dprintk("svc: svc_process dropit\n");
 return 0;

err_short_len:
 svc_printk(rqstp, "short len %Zd, dropping request\n",
   argv->iov_len);

 goto dropit;

err_bad_rpc:
 serv->sv_stats->rpcbadfmt++;
 svc_putnl(resv, 1);
 svc_putnl(resv, 0);
 svc_putnl(resv, 2);
 svc_putnl(resv, 2);
 goto sendit;

err_bad_auth:
 dprintk("svc: authentication failed (%d)\n", ntohl(auth_stat));
 serv->sv_stats->rpcbadauth++;

 xdr_ressize_check(rqstp, reply_statp);
 svc_putnl(resv, 1);
 svc_putnl(resv, 1);
 svc_putnl(resv, ntohl(auth_stat));
 goto sendit;

err_bad_prog:
 dprintk("svc: unknown program %d\n", prog);
 serv->sv_stats->rpcbadfmt++;
 svc_putnl(resv, RPC_PROG_UNAVAIL);
 goto sendit;

err_bad_vers:
 svc_printk(rqstp, "unknown version (%d for prog %d, %s)\n",
         vers, prog, progp->pg_name);

 serv->sv_stats->rpcbadfmt++;
 svc_putnl(resv, RPC_PROG_MISMATCH);
 svc_putnl(resv, progp->pg_lovers);
 svc_putnl(resv, progp->pg_hivers);
 goto sendit;

err_bad_proc:
 svc_printk(rqstp, "unknown procedure (%d)\n", proc);

 serv->sv_stats->rpcbadfmt++;
 svc_putnl(resv, RPC_PROC_UNAVAIL);
 goto sendit;

err_garbage:
 svc_printk(rqstp, "failed to decode args\n");

 rpc_stat = rpc_garbage_args;
err_bad:
 serv->sv_stats->rpcbadfmt++;
 svc_putnl(resv, ntohl(rpc_stat));
 goto sendit;
}
