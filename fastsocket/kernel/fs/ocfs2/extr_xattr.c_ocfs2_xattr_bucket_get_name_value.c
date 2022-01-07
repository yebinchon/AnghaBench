
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct ocfs2_xattr_header {TYPE_1__* xh_entries; int xh_count; } ;
struct TYPE_2__ {int xe_name_offset; } ;


 int EINVAL ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_xattr_bucket_get_name_value(struct super_block *sb,
          struct ocfs2_xattr_header *xh,
          int index,
          int *block_off,
          int *new_offset)
{
 u16 name_offset;

 if (index < 0 || index >= le16_to_cpu(xh->xh_count))
  return -EINVAL;

 name_offset = le16_to_cpu(xh->xh_entries[index].xe_name_offset);

 *block_off = name_offset >> sb->s_blocksize_bits;
 *new_offset = name_offset % sb->s_blocksize;

 return 0;
}
