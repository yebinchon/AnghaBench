
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; int i_ino; } ;
struct iattr {int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int s_flags; } ;


 TYPE_1__* AFFS_SB (int ) ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int EPERM ;
 int SF_IMMUTABLE ;
 int SF_QUIET ;
 int SF_SETGID ;
 int SF_SETMODE ;
 int SF_SETUID ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 int mode_to_prot (struct inode*) ;
 int pr_debug (char*,int ,int) ;

int
affs_notify_change(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 int error;

 pr_debug("AFFS: notify_change(%lu,0x%x)\n",inode->i_ino,attr->ia_valid);

 error = inode_change_ok(inode,attr);
 if (error)
  goto out;

 if (((attr->ia_valid & ATTR_UID) && (AFFS_SB(inode->i_sb)->s_flags & SF_SETUID)) ||
     ((attr->ia_valid & ATTR_GID) && (AFFS_SB(inode->i_sb)->s_flags & SF_SETGID)) ||
     ((attr->ia_valid & ATTR_MODE) &&
      (AFFS_SB(inode->i_sb)->s_flags & (SF_SETMODE | SF_IMMUTABLE)))) {
  if (!(AFFS_SB(inode->i_sb)->s_flags & SF_QUIET))
   error = -EPERM;
  goto out;
 }

 error = inode_setattr(inode, attr);
 if (!error && (attr->ia_valid & ATTR_MODE))
  mode_to_prot(inode);
out:
 return error;
}
