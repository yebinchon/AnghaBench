
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfs4_acl {int dummy; } ;
typedef scalar_t__ __be32 ;


 int FATTR4_WORD0_ACL ;
 scalar_t__ nfsd4_set_nfs4_acl (struct svc_rqst*,struct svc_fh*,struct nfs4_acl*) ;

__attribute__((used)) static void
do_set_nfs4_acl(struct svc_rqst *rqstp, struct svc_fh *fhp,
  struct nfs4_acl *acl, u32 *bmval)
{
 __be32 status;

 status = nfsd4_set_nfs4_acl(rqstp, fhp, acl);
 if (status)





  bmval[0] &= ~FATTR4_WORD0_ACL;
}
