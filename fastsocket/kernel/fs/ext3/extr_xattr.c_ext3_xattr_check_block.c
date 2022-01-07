
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {scalar_t__ b_size; scalar_t__ b_data; } ;
struct TYPE_2__ {scalar_t__ h_magic; scalar_t__ h_blocks; } ;


 int BFIRST (struct buffer_head*) ;
 TYPE_1__* BHDR (struct buffer_head*) ;
 int EIO ;
 int EXT3_XATTR_MAGIC ;
 scalar_t__ cpu_to_le32 (int) ;
 int ext3_xattr_check_names (int ,scalar_t__) ;

__attribute__((used)) static inline int
ext3_xattr_check_block(struct buffer_head *bh)
{
 int error;

 if (BHDR(bh)->h_magic != cpu_to_le32(EXT3_XATTR_MAGIC) ||
     BHDR(bh)->h_blocks != cpu_to_le32(1))
  return -EIO;
 error = ext3_xattr_check_names(BFIRST(bh), bh->b_data + bh->b_size);
 return error;
}
