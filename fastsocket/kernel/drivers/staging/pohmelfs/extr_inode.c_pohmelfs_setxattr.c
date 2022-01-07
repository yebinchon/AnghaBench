
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int state_flags; } ;
struct pohmelfs_inode {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {struct inode* d_inode; } ;


 int EOPNOTSUPP ;
 int NETFS_XATTR_SET ;
 int POHMELFS_FLAGS_XATTR ;
 struct pohmelfs_inode* POHMELFS_I (struct inode*) ;
 struct pohmelfs_sb* POHMELFS_SB (int ) ;
 int pohmelfs_send_xattr_req (struct pohmelfs_inode*,int,size_t,char const*,void const*,size_t,int ) ;

__attribute__((used)) static int pohmelfs_setxattr(struct dentry *dentry, const char *name,
  const void *value, size_t attrsize, int flags)
{
 struct inode *inode = dentry->d_inode;
 struct pohmelfs_inode *pi = POHMELFS_I(inode);
 struct pohmelfs_sb *psb = POHMELFS_SB(inode->i_sb);

 if (!(psb->state_flags & POHMELFS_FLAGS_XATTR))
  return -EOPNOTSUPP;

 return pohmelfs_send_xattr_req(pi, flags, attrsize, name,
   value, attrsize, NETFS_XATTR_SET);
}
