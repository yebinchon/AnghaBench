
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundres {int dummy; } ;
struct nfsd4_access {int ac_resp_access; int ac_supported; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int ) ;

__attribute__((used)) static __be32
nfsd4_encode_access(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_access *access)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(8);
  WRITE32(access->ac_supported);
  WRITE32(access->ac_resp_access);
  ADJUST_ARGS();
 }
 return nfserr;
}
