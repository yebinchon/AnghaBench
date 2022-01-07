
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {unsigned int s_clustersize_bits; } ;


 TYPE_1__* OCFS2_SB (struct super_block*) ;
 unsigned int PAGE_CACHE_SHIFT ;

__attribute__((used)) static inline unsigned int ocfs2_pages_per_cluster(struct super_block *sb)
{
 unsigned int cbits = OCFS2_SB(sb)->s_clustersize_bits;
 unsigned int pages_per_cluster = 1;

 if (PAGE_CACHE_SHIFT < cbits)
  pages_per_cluster = 1 << (cbits - PAGE_CACHE_SHIFT);

 return pages_per_cluster;
}
