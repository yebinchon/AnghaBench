
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vfsmount {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
struct TYPE_6__ {TYPE_2__ fs; } ;
struct common_audit_data {TYPE_3__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int FS ;
 int inode_has_perm (struct cred const*,struct inode*,int ,struct common_audit_data*) ;

__attribute__((used)) static inline int dentry_has_perm(const struct cred *cred,
      struct vfsmount *mnt,
      struct dentry *dentry,
      u32 av)
{
 struct inode *inode = dentry->d_inode;
 struct common_audit_data ad;

 COMMON_AUDIT_DATA_INIT(&ad, FS);
 ad.u.fs.path.mnt = mnt;
 ad.u.fs.path.dentry = dentry;
 return inode_has_perm(cred, inode, av, &ad);
}
