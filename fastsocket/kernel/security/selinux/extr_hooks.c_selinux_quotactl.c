
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct cred {int dummy; } ;


 int FILESYSTEM__QUOTAGET ;
 int FILESYSTEM__QUOTAMOD ;
 struct cred* current_cred () ;
 int superblock_has_perm (struct cred const*,struct super_block*,int ,int *) ;

__attribute__((used)) static int selinux_quotactl(int cmds, int type, int id, struct super_block *sb)
{
 const struct cred *cred = current_cred();
 int rc = 0;

 if (!sb)
  return 0;

 switch (cmds) {
 case 128:
 case 131:
 case 132:
 case 130:
 case 129:
  rc = superblock_has_perm(cred, sb, FILESYSTEM__QUOTAMOD, ((void*)0));
  break;
 case 135:
 case 134:
 case 133:
  rc = superblock_has_perm(cred, sb, FILESYSTEM__QUOTAGET, ((void*)0));
  break;
 default:
  rc = 0;
  break;
 }
 return rc;
}
