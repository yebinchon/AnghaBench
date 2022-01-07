
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_create {int* cr_bmval; int cr_cinfo; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int) ;
 int write_cinfo (int **,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_create(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_create *create)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(32);
  write_cinfo(&p, &create->cr_cinfo);
  WRITE32(2);
  WRITE32(create->cr_bmval[0]);
  WRITE32(create->cr_bmval[1]);
  ADJUST_ARGS();
 }
 return nfserr;
}
