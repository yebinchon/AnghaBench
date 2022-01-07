
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_search {int base; struct ocfs2_xattr_entry* here; TYPE_1__* header; } ;
struct ocfs2_xattr_entry {size_t xe_name_len; int xe_name_offset; } ;
struct TYPE_2__ {int xh_count; } ;


 int EINVAL ;
 int ENODATA ;
 int le16_to_cpu (int ) ;
 int memcmp (char const*,int,size_t) ;
 int ocfs2_xattr_get_type (struct ocfs2_xattr_entry*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int ocfs2_xattr_find_entry(int name_index,
      const char *name,
      struct ocfs2_xattr_search *xs)
{
 struct ocfs2_xattr_entry *entry;
 size_t name_len;
 int i, cmp = 1;

 if (name == ((void*)0))
  return -EINVAL;

 name_len = strlen(name);
 entry = xs->here;
 for (i = 0; i < le16_to_cpu(xs->header->xh_count); i++) {
  cmp = name_index - ocfs2_xattr_get_type(entry);
  if (!cmp)
   cmp = name_len - entry->xe_name_len;
  if (!cmp)
   cmp = memcmp(name, (xs->base +
         le16_to_cpu(entry->xe_name_offset)),
         name_len);
  if (cmp == 0)
   break;
  entry += 1;
 }
 xs->here = entry;

 return cmp ? -ENODATA : 0;
}
