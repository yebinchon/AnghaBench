
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {int dummy; } ;
struct adfs_dir {int pos; } ;


 unsigned int __adfs_dir_get (struct adfs_dir*,int,struct object_info*) ;

__attribute__((used)) static int
adfs_f_getnext(struct adfs_dir *dir, struct object_info *obj)
{
 unsigned int ret;

 ret = __adfs_dir_get(dir, dir->pos, obj);
 if (ret == 0)
  dir->pos += 26;

 return ret;
}
