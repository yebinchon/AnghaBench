
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_rename {int rn_tinfo; int rn_sinfo; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int write_cinfo (int **,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_rename(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_rename *rename)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(40);
  write_cinfo(&p, &rename->rn_sinfo);
  write_cinfo(&p, &rename->rn_tinfo);
  ADJUST_ARGS();
 }
 return nfserr;
}
