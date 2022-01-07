
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_security_xattr_info {int value_len; int value; int name; } ;
struct inode {int i_sb; } ;


 int EOPNOTSUPP ;
 int OCFS2_SB (int ) ;
 int ocfs2_supports_xattr (int ) ;
 int security_inode_init_security (struct inode*,struct inode*,int *,int *,int *) ;

int ocfs2_init_security_get(struct inode *inode,
       struct inode *dir,
       struct ocfs2_security_xattr_info *si)
{

 if (!ocfs2_supports_xattr(OCFS2_SB(dir->i_sb)))
  return -EOPNOTSUPP;
 return security_inode_init_security(inode, dir, &si->name, &si->value,
         &si->value_len);
}
