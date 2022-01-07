
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct superblock_security_struct {int flags; int sid; } ;
struct inode_security_struct {int sclass; int sid; } ;
struct inode {TYPE_1__* i_sb; struct inode_security_struct* i_security; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct TYPE_7__ {TYPE_2__ path; } ;
struct TYPE_8__ {TYPE_3__ fs; } ;
struct common_audit_data {TYPE_4__ u; } ;
struct TYPE_5__ {struct superblock_security_struct* s_security; } ;


 int CAP_MAC_ADMIN ;
 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 int FILESYSTEM__ASSOCIATE ;
 int FILE__RELABELFROM ;
 int FILE__RELABELTO ;
 int FS ;
 int SECCLASS_FILESYSTEM ;
 int SE_SBLABELSUPP ;
 int XATTR_NAME_SELINUX ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int capable (int ) ;
 int current_sid () ;
 int is_owner_or_cap (struct inode*) ;
 int security_context_to_sid (void const*,size_t,int *) ;
 int security_context_to_sid_force (void const*,size_t,int *) ;
 int security_validate_transition (int ,int ,int ,int ) ;
 int selinux_inode_setotherxattr (struct dentry*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_setxattr(struct dentry *dentry, const char *name,
      const void *value, size_t size, int flags)
{
 struct inode *inode = dentry->d_inode;
 struct inode_security_struct *isec = inode->i_security;
 struct superblock_security_struct *sbsec;
 struct common_audit_data ad;
 u32 newsid, sid = current_sid();
 int rc = 0;

 if (strcmp(name, XATTR_NAME_SELINUX))
  return selinux_inode_setotherxattr(dentry, name);

 sbsec = inode->i_sb->s_security;
 if (!(sbsec->flags & SE_SBLABELSUPP))
  return -EOPNOTSUPP;

 if (!is_owner_or_cap(inode))
  return -EPERM;

 COMMON_AUDIT_DATA_INIT(&ad, FS);
 ad.u.fs.path.dentry = dentry;

 rc = avc_has_perm(sid, isec->sid, isec->sclass,
     FILE__RELABELFROM, &ad);
 if (rc)
  return rc;

 rc = security_context_to_sid(value, size, &newsid);
 if (rc == -EINVAL) {
  if (!capable(CAP_MAC_ADMIN))
   return rc;
  rc = security_context_to_sid_force(value, size, &newsid);
 }
 if (rc)
  return rc;

 rc = avc_has_perm(sid, newsid, isec->sclass,
     FILE__RELABELTO, &ad);
 if (rc)
  return rc;

 rc = security_validate_transition(isec->sid, newsid, sid,
       isec->sclass);
 if (rc)
  return rc;

 return avc_has_perm(newsid,
       sbsec->sid,
       SECCLASS_FILESYSTEM,
       FILESYSTEM__ASSOCIATE,
       &ad);
}
