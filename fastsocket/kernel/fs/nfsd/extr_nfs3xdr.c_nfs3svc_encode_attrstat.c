
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_6__ {int mtime; } ;
struct TYPE_5__ {TYPE_1__* fh_dentry; } ;
struct nfsd3_attrstat {scalar_t__ status; TYPE_3__ stat; TYPE_2__ fh; } ;
typedef int __be32 ;
struct TYPE_4__ {int d_inode; } ;


 int * encode_fattr3 (struct svc_rqst*,int *,TYPE_2__*,TYPE_3__*) ;
 int lease_get_mtime (int ,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;

int
nfs3svc_encode_attrstat(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd3_attrstat *resp)
{
 if (resp->status == 0) {
  lease_get_mtime(resp->fh.fh_dentry->d_inode,
    &resp->stat.mtime);
  p = encode_fattr3(rqstp, p, &resp->fh, &resp->stat);
 }
 return xdr_ressize_check(rqstp, p);
}
