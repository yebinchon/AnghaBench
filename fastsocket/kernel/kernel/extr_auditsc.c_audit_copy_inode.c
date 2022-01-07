
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_rdev; int i_gid; int i_uid; int i_mode; TYPE_1__* i_sb; int i_ino; } ;
struct dentry {int dummy; } ;
struct audit_names {int osid; int rdev; int gid; int uid; int mode; int dev; int ino; } ;
struct TYPE_2__ {int s_dev; } ;


 int audit_copy_fcaps (struct audit_names*,struct dentry const*) ;
 int security_inode_getsecid (struct inode const*,int *) ;

__attribute__((used)) static void audit_copy_inode(struct audit_names *name, const struct dentry *dentry,
        const struct inode *inode)
{
 name->ino = inode->i_ino;
 name->dev = inode->i_sb->s_dev;
 name->mode = inode->i_mode;
 name->uid = inode->i_uid;
 name->gid = inode->i_gid;
 name->rdev = inode->i_rdev;
 security_inode_getsecid(inode, &name->osid);
 audit_copy_fcaps(name, dentry);
}
