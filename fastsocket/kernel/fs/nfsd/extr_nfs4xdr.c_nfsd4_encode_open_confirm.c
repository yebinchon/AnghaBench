
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open_confirm {int oc_stateowner; int oc_resp_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ENCODE_SEQID_OP_HEAD ;
 int ENCODE_SEQID_OP_TAIL (int ) ;
 int nfsd4_encode_stateid (struct nfsd4_compoundres*,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_open_confirm(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open_confirm *oc)
{
 ENCODE_SEQID_OP_HEAD;

 if (!nfserr)
  nfsd4_encode_stateid(resp, &oc->oc_resp_stateid);

 ENCODE_SEQID_OP_TAIL(oc->oc_stateowner);
 return nfserr;
}
