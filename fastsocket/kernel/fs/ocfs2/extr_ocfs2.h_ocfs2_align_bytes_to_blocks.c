
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int s_blocksize_bits; } ;


 int ocfs2_blocks_for_bytes (struct super_block*,int) ;

__attribute__((used)) static inline u64 ocfs2_align_bytes_to_blocks(struct super_block *sb,
           u64 bytes)
{
 u64 blocks;

        blocks = ocfs2_blocks_for_bytes(sb, bytes);
 return blocks << sb->s_blocksize_bits;
}
