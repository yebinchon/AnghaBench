
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_locku {int lu_stateowner; int lu_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ENCODE_SEQID_OP_HEAD ;
 int ENCODE_SEQID_OP_TAIL (int ) ;
 int nfsd4_encode_stateid (struct nfsd4_compoundres*,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_locku(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_locku *locku)
{
 ENCODE_SEQID_OP_HEAD;

 if (!nfserr)
  nfsd4_encode_stateid(resp, &locku->lu_stateid);

 ENCODE_SEQID_OP_TAIL(locku->lu_stateowner);
 return nfserr;
}
