
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {scalar_t__ s_magic; } ;
struct TYPE_3__ {scalar_t__ mnt_root; TYPE_2__* mnt_sb; } ;


 scalar_t__ AUTOFS_SUPER_MAGIC ;
 int ENOENT ;
 int follow_up (struct path*) ;
 int kern_path (char const*,int ,struct path*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;

__attribute__((used)) static int find_autofs_mount(const char *pathname,
        struct path *res,
        int test(struct path *path, void *data),
        void *data)
{
 struct path path;
 int err = kern_path(pathname, 0, &path);
 if (err)
  return err;
 err = -ENOENT;
 while (path.dentry == path.mnt->mnt_root) {
  if (path.mnt->mnt_sb->s_magic == AUTOFS_SUPER_MAGIC) {
   if (test(&path, data)) {
    path_get(&path);
    if (!err)
     path_put(res);
    *res = path;
    err = 0;
   }
  }
  if (!follow_up(&path))
   break;
 }
 path_put(&path);
 return err;
}
