
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_xattr_entry {int xe_name_offset; } ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int cmp_xe_offset(const void *a, const void *b)
{
 const struct ocfs2_xattr_entry *l = a, *r = b;
 u32 l_name_offset = le16_to_cpu(l->xe_name_offset);
 u32 r_name_offset = le16_to_cpu(r->xe_name_offset);

 if (l_name_offset < r_name_offset)
  return 1;
 if (l_name_offset > r_name_offset)
  return -1;
 return 0;
}
