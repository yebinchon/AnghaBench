
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct task_security_struct {int create_sid; int sid; } ;
struct superblock_security_struct {int flags; int sid; } ;
struct inode_security_struct {int sid; } ;
struct inode {TYPE_1__* i_sb; struct inode_security_struct* i_security; } ;
struct dentry {int dummy; } ;
struct cred {struct task_security_struct* security; } ;
struct TYPE_6__ {struct dentry* dentry; } ;
struct TYPE_7__ {TYPE_2__ path; } ;
struct TYPE_8__ {TYPE_3__ fs; } ;
struct common_audit_data {TYPE_4__ u; } ;
struct TYPE_5__ {struct superblock_security_struct* s_security; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int DIR__ADD_NAME ;
 int DIR__SEARCH ;
 int FILESYSTEM__ASSOCIATE ;
 int FILE__CREATE ;
 int FS ;
 int SECCLASS_DIR ;
 int SECCLASS_FILESYSTEM ;
 int SE_SBLABELSUPP ;
 int avc_has_perm (int ,int ,int ,int,struct common_audit_data*) ;
 struct cred* current_cred () ;
 int security_transition_sid (int ,int ,int ,int *) ;

__attribute__((used)) static int may_create(struct inode *dir,
        struct dentry *dentry,
        u16 tclass)
{
 const struct cred *cred = current_cred();
 const struct task_security_struct *tsec = cred->security;
 struct inode_security_struct *dsec;
 struct superblock_security_struct *sbsec;
 u32 sid, newsid;
 struct common_audit_data ad;
 int rc;

 dsec = dir->i_security;
 sbsec = dir->i_sb->s_security;

 sid = tsec->sid;
 newsid = tsec->create_sid;

 COMMON_AUDIT_DATA_INIT(&ad, FS);
 ad.u.fs.path.dentry = dentry;

 rc = avc_has_perm(sid, dsec->sid, SECCLASS_DIR,
     DIR__ADD_NAME | DIR__SEARCH,
     &ad);
 if (rc)
  return rc;

 if (!newsid || !(sbsec->flags & SE_SBLABELSUPP)) {
  rc = security_transition_sid(sid, dsec->sid, tclass, &newsid);
  if (rc)
   return rc;
 }

 rc = avc_has_perm(sid, newsid, tclass, FILE__CREATE, &ad);
 if (rc)
  return rc;

 return avc_has_perm(newsid, sbsec->sid,
       SECCLASS_FILESYSTEM,
       FILESYSTEM__ASSOCIATE, &ad);
}
