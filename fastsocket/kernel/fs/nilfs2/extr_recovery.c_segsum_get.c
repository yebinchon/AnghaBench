
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {unsigned int b_size; void* b_data; scalar_t__ b_blocknr; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *segsum_get(struct super_block *sb, struct buffer_head **pbh,
   unsigned int *offset, unsigned int bytes)
{
 void *ptr;
 sector_t blocknr;

 BUG_ON((*pbh)->b_size < *offset);
 if (bytes > (*pbh)->b_size - *offset) {
  blocknr = (*pbh)->b_blocknr;
  brelse(*pbh);
  *pbh = sb_bread(sb, blocknr + 1);
  if (unlikely(!*pbh))
   return ((void*)0);
  *offset = 0;
 }
 ptr = (*pbh)->b_data + *offset;
 *offset += bytes;
 return ptr;
}
