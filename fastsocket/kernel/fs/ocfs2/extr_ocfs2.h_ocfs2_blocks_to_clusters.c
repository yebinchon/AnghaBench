
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct super_block {int s_blocksize_bits; } ;
struct TYPE_2__ {int s_clustersize_bits; } ;


 TYPE_1__* OCFS2_SB (struct super_block*) ;

__attribute__((used)) static inline u32 ocfs2_blocks_to_clusters(struct super_block *sb,
        u64 blocks)
{
 int b_to_c_bits = OCFS2_SB(sb)->s_clustersize_bits -
  sb->s_blocksize_bits;

 return (u32)(blocks >> b_to_c_bits);
}
