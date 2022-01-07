
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_entry {int dummy; } ;


 int EIO ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;

__attribute__((used)) static int
ext4_xattr_check_names(struct ext4_xattr_entry *entry, void *end)
{
 while (!IS_LAST_ENTRY(entry)) {
  struct ext4_xattr_entry *next = EXT4_XATTR_NEXT(entry);
  if ((void *)next >= end)
   return -EIO;
  entry = next;
 }
 return 0;
}
