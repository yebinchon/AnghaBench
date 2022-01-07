
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct svc_rqst {struct nfsd4_compoundres* rq_resp; } ;
struct TYPE_8__ {int data; scalar_t__ len; } ;
struct nfsd4_open {int op_claim_type; TYPE_3__* op_stateowner; int op_clientid; scalar_t__ op_create; TYPE_1__ op_fname; } ;
struct nfsd4_compoundres {int cstate; } ;
struct TYPE_9__ {int fh_handle; } ;
struct nfsd4_compound_state {TYPE_3__* replay_owner; TYPE_2__ current_fh; int session; } ;
struct nfs4_replay {int rp_openfh; } ;
typedef scalar_t__ __be32 ;
struct TYPE_10__ {int so_confirmed; struct nfs4_replay so_replay; } ;






 int NFSD_MAY_NOP ;
 int copy_clientid (int *,int ) ;
 scalar_t__ do_open_fhandle (struct svc_rqst*,TYPE_2__*,struct nfsd4_open*) ;
 scalar_t__ do_open_lookup (struct svc_rqst*,TYPE_2__*,struct nfsd4_open*) ;
 int dprintk (char*,...) ;
 int fh_copy_shallow (int *,int *) ;
 int fh_put (TYPE_2__*) ;
 scalar_t__ fh_verify (struct svc_rqst*,TYPE_2__*,int ,int ) ;
 scalar_t__ locks_in_grace () ;
 int nfs4_get_stateowner (TYPE_3__*) ;
 int nfs4_lock_state () ;
 int nfs4_unlock_state () ;
 scalar_t__ nfsd4_check_open_attributes (struct svc_rqst*,struct nfsd4_compound_state*,struct nfsd4_open*) ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfsd4_process_open1 (int *,struct nfsd4_open*) ;
 scalar_t__ nfsd4_process_open2 (struct svc_rqst*,TYPE_2__*,struct nfsd4_open*) ;
 scalar_t__ nfserr_grace ;
 scalar_t__ nfserr_inval ;
 scalar_t__ nfserr_no_grace ;
 scalar_t__ nfserr_notsupp ;
 scalar_t__ nfserr_replay_me ;

__attribute__((used)) static __be32
nfsd4_open(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    struct nfsd4_open *open)
{
 __be32 status;
 struct nfsd4_compoundres *resp;

 dprintk("NFSD: nfsd4_open filename %.*s op_stateowner %p\n",
  (int)open->op_fname.len, open->op_fname.data,
  open->op_stateowner);


 if (open->op_create && open->op_claim_type != 129)
  return nfserr_inval;

 if (nfsd4_has_session(cstate))
  copy_clientid(&open->op_clientid, cstate->session);

 nfs4_lock_state();


 resp = rqstp->rq_resp;
 status = nfsd4_process_open1(&resp->cstate, open);
 if (status == nfserr_replay_me) {
  struct nfs4_replay *rp = &open->op_stateowner->so_replay;
  fh_put(&cstate->current_fh);
  fh_copy_shallow(&cstate->current_fh.fh_handle,
    &rp->rp_openfh);
  status = fh_verify(rqstp, &cstate->current_fh, 0, NFSD_MAY_NOP);
  if (status)
   dprintk("nfsd4_open: replay failed"
    " restoring previous filehandle\n");
  else
   status = nfserr_replay_me;
 }
 if (status)
  goto out;

 status = nfsd4_check_open_attributes(rqstp, cstate, open);
 if (status)
  goto out;



 status = nfserr_grace;
 if (locks_in_grace() && open->op_claim_type != 128)
  goto out;
 status = nfserr_no_grace;
 if (!locks_in_grace() && open->op_claim_type == 128)
  goto out;

 switch (open->op_claim_type) {
  case 131:
  case 129:






   status = do_open_lookup(rqstp, &cstate->current_fh,
      open);
   if (status)
    goto out;
   break;
  case 128:
   open->op_stateowner->so_confirmed = 1;






   status = do_open_fhandle(rqstp, &cstate->current_fh,
       open);
   if (status)
    goto out;
   break;
              case 130:
   open->op_stateowner->so_confirmed = 1;
   dprintk("NFSD: unsupported OPEN claim type %d\n",
    open->op_claim_type);
   status = nfserr_notsupp;
   goto out;
  default:
   dprintk("NFSD: Invalid OPEN claim type %d\n",
    open->op_claim_type);
   status = nfserr_inval;
   goto out;
 }





 status = nfsd4_process_open2(rqstp, &cstate->current_fh, open);
out:
 if (open->op_stateowner) {
  nfs4_get_stateowner(open->op_stateowner);
  cstate->replay_owner = open->op_stateowner;
 }
 nfs4_unlock_state();
 return status;
}
