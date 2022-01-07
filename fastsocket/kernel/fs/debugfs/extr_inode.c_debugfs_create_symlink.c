
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int GFP_KERNEL ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 struct dentry* debugfs_create_file (char const*,int,struct dentry*,char*,int *) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;

struct dentry *debugfs_create_symlink(const char *name, struct dentry *parent,
          const char *target)
{
 struct dentry *result;
 char *link;

 link = kstrdup(target, GFP_KERNEL);
 if (!link)
  return ((void*)0);

 result = debugfs_create_file(name, S_IFLNK | S_IRWXUGO, parent, link,
         ((void*)0));
 if (!result)
  kfree(link);
 return result;
}
