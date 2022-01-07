
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_header {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;



__attribute__((used)) static inline struct ext4_extent_header *ext_block_hdr(struct buffer_head *bh)
{
 return (struct ext4_extent_header *) bh->b_data;
}
