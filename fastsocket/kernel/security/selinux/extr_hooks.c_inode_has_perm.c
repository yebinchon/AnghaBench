
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode_security_struct {int sclass; int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {struct inode* inode; } ;
struct TYPE_3__ {TYPE_2__ fs; } ;
struct common_audit_data {TYPE_1__ u; } ;


 int COMMON_AUDIT_DATA_INIT (struct common_audit_data*,int ) ;
 int FS ;
 int IS_PRIVATE (struct inode*) ;
 int avc_has_perm (int ,int ,int ,int ,struct common_audit_data*) ;
 int cred_sid (struct cred const*) ;
 scalar_t__ unlikely (int ) ;
 int validate_creds (struct cred const*) ;

__attribute__((used)) static int inode_has_perm(const struct cred *cred,
     struct inode *inode,
     u32 perms,
     struct common_audit_data *adp)
{
 struct inode_security_struct *isec;
 struct common_audit_data ad;
 u32 sid;

 validate_creds(cred);

 if (unlikely(IS_PRIVATE(inode)))
  return 0;

 sid = cred_sid(cred);
 isec = inode->i_security;

 if (!adp) {
  adp = &ad;
  COMMON_AUDIT_DATA_INIT(&ad, FS);
  ad.u.fs.inode = inode;
 }

 return avc_has_perm(sid, isec->sid, isec->sclass, perms, adp);
}
