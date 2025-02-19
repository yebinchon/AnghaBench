
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
typedef scalar_t__ loff_t ;


 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 int ramfs_nommu_resize (struct inode*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ramfs_nommu_setattr(struct dentry *dentry, struct iattr *ia)
{
 struct inode *inode = dentry->d_inode;
 unsigned int old_ia_valid = ia->ia_valid;
 int ret = 0;


 ret = inode_change_ok(inode, ia);
 if (ret)
  return ret;


 if (ia->ia_valid & ATTR_SIZE) {
  loff_t size = i_size_read(inode);
  if (ia->ia_size != size) {
   ret = ramfs_nommu_resize(inode, ia->ia_size, size);
   if (ret < 0 || ia->ia_valid == ATTR_SIZE)
    goto out;
  } else {



   ia->ia_valid |= ATTR_MTIME|ATTR_CTIME;
  }
 }

 ret = inode_setattr(inode, ia);
 out:
 ia->ia_valid = old_ia_valid;
 return ret;
}
