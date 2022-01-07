
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundres {int dummy; } ;
struct nfsd4_close {int cl_stateowner; int cl_stateid; } ;
typedef int __be32 ;


 int ENCODE_SEQID_OP_HEAD ;
 int ENCODE_SEQID_OP_TAIL (int ) ;
 int nfsd4_encode_stateid (struct nfsd4_compoundres*,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_close(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_close *close)
{
 ENCODE_SEQID_OP_HEAD;

 if (!nfserr)
  nfsd4_encode_stateid(resp, &close->cl_stateid);

 ENCODE_SEQID_OP_TAIL(close->cl_stateowner);
 return nfserr;
}
