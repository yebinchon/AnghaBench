
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int xe_name_len; int xe_name_offset; } ;
struct buffer_head {int dummy; } ;


 int OCFS2_XATTR_SIZE (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_get_xattr_value_root(struct super_block *sb,
          struct buffer_head *bh,
          struct ocfs2_xattr_header *xh,
          int offset,
          struct ocfs2_xattr_value_root **xv,
          struct buffer_head **ret_bh,
          void *para)
{
 struct ocfs2_xattr_entry *xe = &xh->xh_entries[offset];

 *xv = (struct ocfs2_xattr_value_root *)((void *)xh +
  le16_to_cpu(xe->xe_name_offset) +
  OCFS2_XATTR_SIZE(xe->xe_name_len));

 if (ret_bh)
  *ret_bh = bh;

 return 0;
}
