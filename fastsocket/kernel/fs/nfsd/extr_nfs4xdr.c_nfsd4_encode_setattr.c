
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_setattr {int* sa_bmval; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef scalar_t__ __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int) ;

__attribute__((used)) static __be32
nfsd4_encode_setattr(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_setattr *setattr)
{
 __be32 *p;

 RESERVE_SPACE(12);
 if (nfserr) {
  WRITE32(2);
  WRITE32(0);
  WRITE32(0);
 }
 else {
  WRITE32(2);
  WRITE32(setattr->sa_bmval[0]);
  WRITE32(setattr->sa_bmval[1]);
 }
 ADJUST_ARGS();
 return nfserr;
}
