
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {unsigned int s_clustersize_bits; } ;


 TYPE_1__* OCFS2_SB (struct super_block*) ;
 unsigned int PAGE_CACHE_SHIFT ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned int ocfs2_page_index_to_clusters(struct super_block *sb,
       unsigned long pg_index)
{
 u32 clusters = pg_index;
 unsigned int cbits = OCFS2_SB(sb)->s_clustersize_bits;

 if (unlikely(PAGE_CACHE_SHIFT > cbits))
  clusters = pg_index << (PAGE_CACHE_SHIFT - cbits);
 else if (PAGE_CACHE_SHIFT < cbits)
  clusters = pg_index >> (cbits - PAGE_CACHE_SHIFT);

 return clusters;
}
