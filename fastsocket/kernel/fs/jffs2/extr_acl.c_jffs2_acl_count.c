
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_acl_header {int dummy; } ;
struct jffs2_acl_entry_short {int dummy; } ;
struct jffs2_acl_entry {int dummy; } ;



__attribute__((used)) static int jffs2_acl_count(size_t size)
{
 size_t s;

 size -= sizeof(struct jffs2_acl_header);
 if (size < 4 * sizeof(struct jffs2_acl_entry_short)) {
  if (size % sizeof(struct jffs2_acl_entry_short))
   return -1;
  return size / sizeof(struct jffs2_acl_entry_short);
 } else {
  s = size - 4 * sizeof(struct jffs2_acl_entry_short);
  if (s % sizeof(struct jffs2_acl_entry))
   return -1;
  return s / sizeof(struct jffs2_acl_entry) + 4;
 }
}
