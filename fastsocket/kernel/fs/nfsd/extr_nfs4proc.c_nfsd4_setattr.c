
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int ia_valid; } ;
struct nfsd4_setattr {TYPE_1__ sa_iattr; int * sa_acl; int sa_bmval; int sa_stateid; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef scalar_t__ __be32 ;


 int ATTR_SIZE ;
 int WR_STATE ;
 scalar_t__ check_attr_support (struct svc_rqst*,struct nfsd4_compound_state*,int ,int ) ;
 int dprintk (char*) ;
 int fh_drop_write (int *) ;
 scalar_t__ fh_want_write (int *) ;
 int nfs4_lock_state () ;
 scalar_t__ nfs4_preprocess_stateid_op (struct nfsd4_compound_state*,int *,int ,int *) ;
 int nfs4_unlock_state () ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_set_nfs4_acl (struct svc_rqst*,int *,int *) ;
 int nfsd_attrmask ;
 scalar_t__ nfsd_setattr (struct svc_rqst*,int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static __be32
nfsd4_setattr(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
       struct nfsd4_setattr *setattr)
{
 __be32 status = nfs_ok;

 if (setattr->sa_iattr.ia_valid & ATTR_SIZE) {
  nfs4_lock_state();
  status = nfs4_preprocess_stateid_op(cstate,
   &setattr->sa_stateid, WR_STATE, ((void*)0));
  nfs4_unlock_state();
  if (status) {
   dprintk("NFSD: nfsd4_setattr: couldn't process stateid!\n");
   return status;
  }
 }
 status = fh_want_write(&cstate->current_fh);
 if (status)
  return status;
 status = nfs_ok;

 status = check_attr_support(rqstp, cstate, setattr->sa_bmval,
        nfsd_attrmask);
 if (status)
  goto out;

 if (setattr->sa_acl != ((void*)0))
  status = nfsd4_set_nfs4_acl(rqstp, &cstate->current_fh,
         setattr->sa_acl);
 if (status)
  goto out;
 status = nfsd_setattr(rqstp, &cstate->current_fh, &setattr->sa_iattr,
    0, (time_t)0);
out:
 fh_drop_write(&cstate->current_fh);
 return status;
}
