
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct size_entry {int exists; void* d_size; void* i_size; } ;
typedef void* loff_t ;
typedef int ino_t ;





 int add_ino (struct ubifs_info*,int ,void*,void*,int) ;
 struct size_entry* find_ino (struct ubifs_info*,int ) ;
 int key_inum (struct ubifs_info*,union ubifs_key*) ;
 int key_type (struct ubifs_info*,union ubifs_key*) ;
 int remove_ino (struct ubifs_info*,int ) ;

int ubifs_recover_size_accum(struct ubifs_info *c, union ubifs_key *key,
        int deletion, loff_t new_size)
{
 ino_t inum = key_inum(c, key);
 struct size_entry *e;
 int err;

 switch (key_type(c, key)) {
 case 129:
  if (deletion)
   remove_ino(c, inum);
  else {
   e = find_ino(c, inum);
   if (e) {
    e->i_size = new_size;
    e->exists = 1;
   } else {
    err = add_ino(c, inum, new_size, 0, 1);
    if (err)
     return err;
   }
  }
  break;
 case 130:
  e = find_ino(c, inum);
  if (e) {
   if (new_size > e->d_size)
    e->d_size = new_size;
  } else {
   err = add_ino(c, inum, 0, new_size, 0);
   if (err)
    return err;
  }
  break;
 case 128:
  e = find_ino(c, inum);
  if (e)
   e->d_size = new_size;
  break;
 }
 return 0;
}
