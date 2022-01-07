
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_compoundres {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfsd4_commit {TYPE_1__ co_verf; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITEMEM (int ,int) ;

__attribute__((used)) static __be32
nfsd4_encode_commit(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_commit *commit)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(8);
  WRITEMEM(commit->co_verf.data, 8);
  ADJUST_ARGS();
 }
 return nfserr;
}
