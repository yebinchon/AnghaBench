
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* mnt; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mnt_sb; } ;


 int EINVAL ;
 int kern_path (char*,int ,struct path*) ;
 int nlmsvc_unlock_all_by_sb (int ) ;
 int path_put (struct path*) ;
 scalar_t__ qword_get (char**,char*,size_t) ;

__attribute__((used)) static ssize_t write_unlock_fs(struct file *file, char *buf, size_t size)
{
 struct path path;
 char *fo_path;
 int error;


 if (size == 0)
  return -EINVAL;

 if (buf[size-1] != '\n')
  return -EINVAL;

 fo_path = buf;
 if (qword_get(&buf, fo_path, size) < 0)
  return -EINVAL;

 error = kern_path(fo_path, 0, &path);
 if (error)
  return error;
 error = nlmsvc_unlock_all_by_sb(path.mnt->mnt_sb);

 path_put(&path);
 return error;
}
