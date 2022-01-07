
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int nfserr_notsupp ;

__attribute__((used)) static __be32
nfsd4_decode_notsupp(struct nfsd4_compoundargs *argp, void *p)
{
 return nfserr_notsupp;
}
