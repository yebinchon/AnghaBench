
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_root; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int dentry; } ;
struct TYPE_5__ {TYPE_1__ path; } ;
struct TYPE_6__ {TYPE_2__ fs; } ;
struct common_audit_data {TYPE_3__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int FILESYSTEM__MOUNT ;
 int FS ;
 int MS_KERNMOUNT ;
 struct cred* current_cred () ;
 int superblock_doinit (struct super_block*,void*) ;
 int superblock_has_perm (struct cred const*,struct super_block*,int ,struct common_audit_data*) ;

__attribute__((used)) static int selinux_sb_kern_mount(struct super_block *sb, int flags, void *data)
{
 const struct cred *cred = current_cred();
 struct common_audit_data ad;
 int rc;

 rc = superblock_doinit(sb, data);
 if (rc)
  return rc;


 if (flags & MS_KERNMOUNT)
  return 0;

 COMMON_AUDIT_DATA_INIT(&ad, FS);
 ad.u.fs.path.dentry = sb->s_root;
 return superblock_has_perm(cred, sb, FILESYSTEM__MOUNT, &ad);
}
