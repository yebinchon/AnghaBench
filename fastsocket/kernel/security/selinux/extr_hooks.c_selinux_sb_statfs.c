
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dentry {TYPE_4__* d_sb; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {int dentry; } ;
struct TYPE_6__ {TYPE_1__ path; } ;
struct TYPE_7__ {TYPE_2__ fs; } ;
struct common_audit_data {TYPE_3__ u; } ;
struct TYPE_8__ {int s_root; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int FILESYSTEM__GETATTR ;
 int FS ;
 struct cred* current_cred () ;
 int superblock_has_perm (struct cred const*,TYPE_4__*,int ,struct common_audit_data*) ;

__attribute__((used)) static int selinux_sb_statfs(struct dentry *dentry)
{
 const struct cred *cred = current_cred();
 struct common_audit_data ad;

 COMMON_AUDIT_DATA_INIT(&ad, FS);
 ad.u.fs.path.dentry = dentry->d_sb->s_root;
 return superblock_has_perm(cred, dentry->d_sb, FILESYSTEM__GETATTR, &ad);
}
