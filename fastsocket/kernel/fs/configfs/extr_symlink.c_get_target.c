
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_sb; } ;


 int ENOENT ;
 int EPERM ;
 int LOOKUP_DIRECTORY ;
 int LOOKUP_FOLLOW ;
 struct config_item* configfs_get_config_item (TYPE_1__*) ;
 scalar_t__ configfs_sb ;
 int kern_path (char const*,int,struct path*) ;
 int path_put (struct path*) ;

__attribute__((used)) static int get_target(const char *symname, struct path *path,
        struct config_item **target)
{
 int ret;

 ret = kern_path(symname, LOOKUP_FOLLOW|LOOKUP_DIRECTORY, path);
 if (!ret) {
  if (path->dentry->d_sb == configfs_sb) {
   *target = configfs_get_config_item(path->dentry);
   if (!*target) {
    ret = -ENOENT;
    path_put(path);
   }
  } else
   ret = -EPERM;
 }

 return ret;
}
