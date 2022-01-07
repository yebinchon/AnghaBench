
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_lockt {int lt_denied; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef scalar_t__ __be32 ;


 int nfsd4_encode_lock_denied (struct nfsd4_compoundres*,int *) ;
 scalar_t__ nfserr_denied ;

__attribute__((used)) static __be32
nfsd4_encode_lockt(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_lockt *lockt)
{
 if (nfserr == nfserr_denied)
  nfsd4_encode_lock_denied(resp, &lockt->lt_denied);
 return nfserr;
}
