
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; int d_sb; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_info {int flags; int last_used; } ;


 int AUTOFS_INF_PENDING ;
 int DPRINTK (char*,int,...) ;
 int NFY_MOUNT ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs4_sbi (int ) ;
 int autofs4_wait (struct autofs_sb_info*,struct dentry*,int ) ;
 int jiffies ;

__attribute__((used)) static int autofs4_mount_wait(struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs4_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs4_dentry_ino(dentry);
 int status = 0;

 if (ino->flags & AUTOFS_INF_PENDING) {
  DPRINTK("waiting for mount name=%.*s",
   dentry->d_name.len, dentry->d_name.name);
  status = autofs4_wait(sbi, dentry, NFY_MOUNT);
  DPRINTK("mount wait done status=%d", status);
 }
 ino->last_used = jiffies;
 return status;
}
