
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_setclientid {int se_confirm; int se_clientid; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int nfs4_verifier ;
typedef scalar_t__ __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int WRITE32 (int ) ;
 int WRITEMEM (int *,int) ;
 scalar_t__ nfserr_clid_inuse ;

__attribute__((used)) static __be32
nfsd4_encode_setclientid(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_setclientid *scd)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(8 + sizeof(nfs4_verifier));
  WRITEMEM(&scd->se_clientid, 8);
  WRITEMEM(&scd->se_confirm, sizeof(nfs4_verifier));
  ADJUST_ARGS();
 }
 else if (nfserr == nfserr_clid_inuse) {
  RESERVE_SPACE(8);
  WRITE32(0);
  WRITE32(0);
  ADJUST_ARGS();
 }
 return nfserr;
}
