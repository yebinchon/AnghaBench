
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int LOOKUP_EXCL ;
 int S_IFREG ;
 int gfs2_create_inode (struct inode*,struct dentry*,int,int ,int *,int ,int) ;

__attribute__((used)) static int gfs2_create(struct inode *dir, struct dentry *dentry,
         int mode, struct nameidata *nd)
{
 int excl = 0;
 if (nd && (nd->flags & LOOKUP_EXCL))
  excl = 1;
 return gfs2_create_inode(dir, dentry, S_IFREG | mode, 0, ((void*)0), 0, excl);
}
