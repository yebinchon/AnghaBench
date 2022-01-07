
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; TYPE_2__* fh_export; } ;
struct kstat {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {int mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;


 int * encode_fattr (struct svc_rqst*,int *,struct svc_fh*,struct kstat*) ;
 int vfs_getattr (int ,int ,struct kstat*) ;

__be32 *nfs2svc_encode_fattr(struct svc_rqst *rqstp, __be32 *p, struct svc_fh *fhp)
{
 struct kstat stat;
 vfs_getattr(fhp->fh_export->ex_path.mnt, fhp->fh_dentry, &stat);
 return encode_fattr(rqstp, p, fhp, &stat);
}
