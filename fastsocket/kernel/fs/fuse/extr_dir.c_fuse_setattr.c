
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; int * ia_file; } ;
struct dentry {struct inode* d_inode; } ;


 int ATTR_FILE ;
 int EACCES ;
 int fuse_allow_current_process (int ) ;
 int fuse_do_setattr (struct inode*,struct iattr*,int *) ;
 int get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_setattr(struct dentry *entry, struct iattr *attr)
{
 struct inode *inode = entry->d_inode;

 if (!fuse_allow_current_process(get_fuse_conn(inode)))
  return -EACCES;

 if (attr->ia_valid & ATTR_FILE)
  return fuse_do_setattr(inode, attr, attr->ia_file);
 else
  return fuse_do_setattr(inode, attr, ((void*)0));
}
