
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_header {int xh_count; struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int dummy; } ;


 scalar_t__ cmp_xe (struct ocfs2_xattr_entry*,struct ocfs2_xattr_entry*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_xattr_find_divide_pos(struct ocfs2_xattr_header *xh)
{
 struct ocfs2_xattr_entry *entries = xh->xh_entries;
 int count = le16_to_cpu(xh->xh_count);
 int delta, middle = count / 2;







 for (delta = 0; delta < middle; delta++) {

  if (cmp_xe(&entries[middle - delta - 1],
      &entries[middle - delta]))
   return middle - delta;


  if ((middle + delta + 1) == count)
   continue;


  if (cmp_xe(&entries[middle + delta],
      &entries[middle + delta + 1]))
   return middle + delta + 1;
 }


 return count;
}
