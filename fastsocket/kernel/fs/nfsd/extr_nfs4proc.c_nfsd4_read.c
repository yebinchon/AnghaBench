
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd4_read {scalar_t__ rd_offset; int * rd_fhp; struct svc_rqst* rd_rqstp; int * rd_filp; int rd_stateid; } ;
struct nfsd4_compound_state {int current_fh; } ;
typedef int __be32 ;


 scalar_t__ OFFSET_MAX ;
 int RD_STATE ;
 int dprintk (char*) ;
 int get_file (int *) ;
 int nfs4_lock_state () ;
 int nfs4_preprocess_stateid_op (struct nfsd4_compound_state*,int *,int ,int **) ;
 int nfs4_unlock_state () ;
 int nfs_ok ;
 int nfserr_inval ;

__attribute__((used)) static __be32
nfsd4_read(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
    struct nfsd4_read *read)
{
 __be32 status;



 read->rd_filp = ((void*)0);
 if (read->rd_offset >= OFFSET_MAX)
  return nfserr_inval;

 nfs4_lock_state();

 if ((status = nfs4_preprocess_stateid_op(cstate, &read->rd_stateid,
       RD_STATE, &read->rd_filp))) {
  dprintk("NFSD: nfsd4_read: couldn't process stateid!\n");
  goto out;
 }
 if (read->rd_filp)
  get_file(read->rd_filp);
 status = nfs_ok;
out:
 nfs4_unlock_state();
 read->rd_rqstp = rqstp;
 read->rd_fhp = &cstate->current_fh;
 return status;
}
