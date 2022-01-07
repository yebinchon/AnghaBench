
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_arg; } ;
struct nfsd3_setaclargs {int mask; int acl_default; int acl_access; int fh; } ;
struct kvec {scalar_t__ iov_base; } ;
typedef int __be32 ;


 int NFS_ACL ;
 int NFS_ACLCNT ;
 int NFS_DFACL ;
 int NFS_DFACLCNT ;
 int * nfs2svc_decode_fh (int *,int *) ;
 int nfsacl_decode (TYPE_1__*,unsigned int,int *,int *) ;
 int ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfsaclsvc_decode_setaclargs(struct svc_rqst *rqstp, __be32 *p,
  struct nfsd3_setaclargs *argp)
{
 struct kvec *head = rqstp->rq_arg.head;
 unsigned int base;
 int n;

 if (!(p = nfs2svc_decode_fh(p, &argp->fh)))
  return 0;
 argp->mask = ntohl(*p++);
 if (argp->mask & ~(NFS_ACL|NFS_ACLCNT|NFS_DFACL|NFS_DFACLCNT) ||
     !xdr_argsize_check(rqstp, p))
  return 0;

 base = (char *)p - (char *)head->iov_base;
 n = nfsacl_decode(&rqstp->rq_arg, base, ((void*)0),
     (argp->mask & NFS_ACL) ?
     &argp->acl_access : ((void*)0));
 if (n > 0)
  n = nfsacl_decode(&rqstp->rq_arg, base + n, ((void*)0),
      (argp->mask & NFS_DFACL) ?
      &argp->acl_default : ((void*)0));
 return (n > 0);
}
