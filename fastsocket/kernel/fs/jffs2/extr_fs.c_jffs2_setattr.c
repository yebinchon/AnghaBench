
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; } ;
struct dentry {int d_inode; } ;


 int ATTR_MODE ;
 int inode_change_ok (int ,struct iattr*) ;
 int jffs2_acl_chmod (int ) ;
 int jffs2_do_setattr (int ,struct iattr*) ;

int jffs2_setattr(struct dentry *dentry, struct iattr *iattr)
{
 int rc;

 rc = inode_change_ok(dentry->d_inode, iattr);
 if (rc)
  return rc;

 rc = jffs2_do_setattr(dentry->d_inode, iattr);
 if (!rc && (iattr->ia_valid & ATTR_MODE))
  rc = jffs2_acl_chmod(dentry->d_inode);

 return rc;
}
