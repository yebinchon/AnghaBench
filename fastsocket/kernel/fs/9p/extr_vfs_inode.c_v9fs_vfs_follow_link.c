
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOMEM ;
 char* ERR_PTR (int) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ) ;
 scalar_t__ PATH_MAX ;
 char* __getname () ;
 int __putname (char*) ;
 size_t min (int,scalar_t__) ;
 int nd_set_link (struct nameidata*,char*) ;
 int v9fs_readlink (struct dentry*,char*,scalar_t__) ;

__attribute__((used)) static void *v9fs_vfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 int len = 0;
 char *link = __getname();

 P9_DPRINTK(P9_DEBUG_VFS, "%s n", dentry->d_name.name);

 if (!link)
  link = ERR_PTR(-ENOMEM);
 else {
  len = v9fs_readlink(dentry, link, PATH_MAX);

  if (len < 0) {
   __putname(link);
   link = ERR_PTR(len);
  } else
   link[min(len, PATH_MAX-1)] = 0;
 }
 nd_set_link(nd, link);

 return ((void*)0);
}
