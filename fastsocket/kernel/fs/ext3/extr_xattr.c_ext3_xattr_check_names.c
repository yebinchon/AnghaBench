
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext3_xattr_entry {int dummy; } ;


 int EIO ;
 struct ext3_xattr_entry* EXT3_XATTR_NEXT (struct ext3_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext3_xattr_entry*) ;

__attribute__((used)) static int
ext3_xattr_check_names(struct ext3_xattr_entry *entry, void *end)
{
 while (!IS_LAST_ENTRY(entry)) {
  struct ext3_xattr_entry *next = EXT3_XATTR_NEXT(entry);
  if ((void *)next >= end)
   return -EIO;
  entry = next;
 }
 return 0;
}
