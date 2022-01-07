
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct svc_export {int ex_flags; TYPE_2__ ex_path; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int __be32 ;
struct TYPE_3__ {int i_mode; } ;


 int NFSEXP_V4ROOT ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int nfs_ok ;
 int nfsd_v4client (struct svc_rqst*) ;
 int nfserr_stale ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline __be32 check_pseudo_root(struct svc_rqst *rqstp,
 struct dentry *dentry, struct svc_export *exp)
{
 if (!(exp->ex_flags & NFSEXP_V4ROOT))
  return nfs_ok;






 if (!nfsd_v4client(rqstp))
  return nfserr_stale;




 if (unlikely(!S_ISDIR(dentry->d_inode->i_mode) &&
       !S_ISLNK(dentry->d_inode->i_mode)))
  return nfserr_stale;





 if (unlikely(dentry != exp->ex_path.dentry))
  return nfserr_stale;
 return nfs_ok;
}
