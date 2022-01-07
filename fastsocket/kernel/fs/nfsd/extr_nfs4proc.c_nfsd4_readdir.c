
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct svc_rqst {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct nfsd4_readdir {int rd_cookie; int* rd_bmval; int * rd_fhp; struct svc_rqst* rd_rqstp; TYPE_1__ rd_verf; } ;
struct nfsd4_compound_state {int current_fh; int minorversion; } ;
struct TYPE_4__ {int data; } ;
typedef TYPE_2__ nfs4_verifier ;
typedef int __be32 ;


 int NFS4_VERIFIER_SIZE ;
 int NFSD_WRITEONLY_ATTRS_WORD1 ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int nfs_ok ;
 int nfsd_suppattrs0 (int ) ;
 int nfsd_suppattrs1 (int ) ;
 int nfsd_suppattrs2 (int ) ;
 int nfserr_bad_cookie ;
 int nfserr_inval ;

__attribute__((used)) static __be32
nfsd4_readdir(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
       struct nfsd4_readdir *readdir)
{
 u64 cookie = readdir->rd_cookie;
 static const nfs4_verifier zeroverf;



 if (readdir->rd_bmval[1] & NFSD_WRITEONLY_ATTRS_WORD1)
  return nfserr_inval;

 readdir->rd_bmval[0] &= nfsd_suppattrs0(cstate->minorversion);
 readdir->rd_bmval[1] &= nfsd_suppattrs1(cstate->minorversion);
 readdir->rd_bmval[2] &= nfsd_suppattrs2(cstate->minorversion);

 if ((cookie == 1) || (cookie == 2) ||
     (cookie == 0 && memcmp(readdir->rd_verf.data, zeroverf.data, NFS4_VERIFIER_SIZE)))
  return nfserr_bad_cookie;

 readdir->rd_rqstp = rqstp;
 readdir->rd_fhp = &cstate->current_fh;
 return nfs_ok;
}
