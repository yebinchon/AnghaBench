
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open_downgrade {int od_stateowner; int od_stateid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ENCODE_SEQID_OP_HEAD ;
 int ENCODE_SEQID_OP_TAIL (int ) ;
 int nfsd4_encode_stateid (struct nfsd4_compoundres*,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_open_downgrade(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open_downgrade *od)
{
 ENCODE_SEQID_OP_HEAD;

 if (!nfserr)
  nfsd4_encode_stateid(resp, &od->od_stateid);

 ENCODE_SEQID_OP_TAIL(od->od_stateowner);
 return nfserr;
}
