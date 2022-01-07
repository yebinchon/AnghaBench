
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int t_blocknr_high; int t_blocknr; } ;
typedef TYPE_1__ journal_block_tag_t ;


 int JBD2_TAG_SIZE32 ;
 unsigned long long be32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned long long read_tag_block(int tag_bytes, journal_block_tag_t *tag)
{
 unsigned long long block = be32_to_cpu(tag->t_blocknr);
 if (tag_bytes > JBD2_TAG_SIZE32)
  block |= (u64)be32_to_cpu(tag->t_blocknr_high) << 32;
 return block;
}
