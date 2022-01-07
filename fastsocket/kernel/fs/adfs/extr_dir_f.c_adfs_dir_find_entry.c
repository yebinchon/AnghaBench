
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {unsigned long file_id; } ;
struct adfs_dir {int dummy; } ;


 int ADFS_NUM_DIR_ENTRIES ;
 int ENOENT ;
 int __adfs_dir_get (struct adfs_dir*,int,struct object_info*) ;

__attribute__((used)) static int
adfs_dir_find_entry(struct adfs_dir *dir, unsigned long object_id)
{
 int pos, ret;

 ret = -ENOENT;

 for (pos = 5; pos < ADFS_NUM_DIR_ENTRIES * 26 + 5; pos += 26) {
  struct object_info obj;

  if (!__adfs_dir_get(dir, pos, &obj))
   break;

  if (obj.file_id == object_id) {
   ret = pos;
   break;
  }
 }

 return ret;
}
