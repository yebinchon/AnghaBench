
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 scalar_t__ IS_ERR (char*) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ,char*) ;
 int __putname (char*) ;
 char* nd_get_link (struct nameidata*) ;

__attribute__((used)) static void
v9fs_vfs_put_link(struct dentry *dentry, struct nameidata *nd, void *p)
{
 char *s = nd_get_link(nd);

 P9_DPRINTK(P9_DEBUG_VFS, " %s %s\n", dentry->d_name.name,
  IS_ERR(s) ? "<error>" : s);
 if (!IS_ERR(s))
  __putname(s);
}
