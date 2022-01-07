
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int EPERM ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_POSIXACL (struct inode*) ;
 int LM_ST_EXCLUSIVE ;
 int gfs2_acl_chmod (struct gfs2_inode*,struct iattr*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_setattr_simple (struct inode*,struct iattr*) ;
 int gfs2_setattr_size (struct inode*,int ) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_chown (struct inode*,struct iattr*) ;

__attribute__((used)) static int gfs2_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder i_gh;
 int error;

 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
 if (error)
  return error;

 error = -EPERM;
 if (IS_IMMUTABLE(inode) || IS_APPEND(inode))
  goto out;

 error = inode_change_ok(inode, attr);
 if (error)
  goto out;

 if (attr->ia_valid & ATTR_SIZE)
  error = gfs2_setattr_size(inode, attr->ia_size);
 else if (attr->ia_valid & (ATTR_UID | ATTR_GID))
  error = setattr_chown(inode, attr);
 else if ((attr->ia_valid & ATTR_MODE) && IS_POSIXACL(inode))
  error = gfs2_acl_chmod(ip, attr);
 else
  error = gfs2_setattr_simple(inode, attr);

out:
 if (!error)
  mark_inode_dirty(inode);
 gfs2_glock_dq_uninit(&i_gh);
 return error;
}
