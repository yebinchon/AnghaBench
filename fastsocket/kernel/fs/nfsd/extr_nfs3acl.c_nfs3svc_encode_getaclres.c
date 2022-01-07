
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page_len; struct kvec* head; } ;
struct svc_rqst {TYPE_1__ rq_res; int rq_resused; int * rq_respages; } ;
struct TYPE_4__ {struct dentry* fh_dentry; } ;
struct nfsd3_getaclres {scalar_t__ status; int mask; int * acl_default; int * acl_access; TYPE_2__ fh; } ;
struct kvec {scalar_t__ iov_base; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int __be32 ;


 int NFS_ACL ;
 int NFS_ACL_DEFAULT ;
 int NFS_DFACL ;
 scalar_t__ PAGE_SIZE ;
 int htonl (int) ;
 int * nfs3svc_encode_post_op_attr (struct svc_rqst*,int *,TYPE_2__*) ;
 int nfsacl_encode (TYPE_1__*,unsigned int,struct inode*,int *,int,int ) ;
 int nfsacl_size (int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

__attribute__((used)) static int nfs3svc_encode_getaclres(struct svc_rqst *rqstp, __be32 *p,
  struct nfsd3_getaclres *resp)
{
 struct dentry *dentry = resp->fh.fh_dentry;

 p = nfs3svc_encode_post_op_attr(rqstp, p, &resp->fh);
 if (resp->status == 0 && dentry && dentry->d_inode) {
  struct inode *inode = dentry->d_inode;
  struct kvec *head = rqstp->rq_res.head;
  unsigned int base;
  int n;
  int w;

  *p++ = htonl(resp->mask);
  if (!xdr_ressize_check(rqstp, p))
   return 0;
  base = (char *)p - (char *)head->iov_base;

  rqstp->rq_res.page_len = w = nfsacl_size(
   (resp->mask & NFS_ACL) ? resp->acl_access : ((void*)0),
   (resp->mask & NFS_DFACL) ? resp->acl_default : ((void*)0));
  while (w > 0) {
   if (!rqstp->rq_respages[rqstp->rq_resused++])
    return 0;
   w -= PAGE_SIZE;
  }

  n = nfsacl_encode(&rqstp->rq_res, base, inode,
      resp->acl_access,
      resp->mask & NFS_ACL, 0);
  if (n > 0)
   n = nfsacl_encode(&rqstp->rq_res, base + n, inode,
       resp->acl_default,
       resp->mask & NFS_DFACL,
       NFS_ACL_DEFAULT);
  if (n <= 0)
   return 0;
 } else
  if (!xdr_ressize_check(rqstp, p))
   return 0;

 return 1;
}
