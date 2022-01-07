
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_setattr {int sa_acl; int sa_iattr; int sa_bmval; int sa_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ nfsd4_decode_fattr (struct nfsd4_compoundargs*,int ,int *,int *) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_setattr(struct nfsd4_compoundargs *argp, struct nfsd4_setattr *setattr)
{
 __be32 status;

 status = nfsd4_decode_stateid(argp, &setattr->sa_stateid);
 if (status)
  return status;
 return nfsd4_decode_fattr(argp, setattr->sa_bmval, &setattr->sa_iattr,
      &setattr->sa_acl);
}
