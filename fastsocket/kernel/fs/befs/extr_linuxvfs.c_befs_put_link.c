
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {int d_inode; } ;
struct TYPE_3__ {int i_flags; } ;
typedef TYPE_1__ befs_inode_info ;


 TYPE_1__* BEFS_I (int ) ;
 int BEFS_LONG_SYMLINK ;
 int IS_ERR (char*) ;
 int kfree (char*) ;
 char* nd_get_link (struct nameidata*) ;

__attribute__((used)) static void befs_put_link(struct dentry *dentry, struct nameidata *nd, void *p)
{
 befs_inode_info *befs_ino = BEFS_I(dentry->d_inode);
 if (befs_ino->i_flags & BEFS_LONG_SYMLINK) {
  char *link = nd_get_link(nd);
  if (!IS_ERR(link))
   kfree(link);
 }
}
