
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_extent_rec {int e_cpos; int e_leaf_clusters; } ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ocfs2_extents_adjacent(struct ocfs2_extent_rec *left,
      struct ocfs2_extent_rec *right)
{
 u32 left_range;

 left_range = le32_to_cpu(left->e_cpos) +
  le16_to_cpu(left->e_leaf_clusters);

 return (left_range == le32_to_cpu(right->e_cpos));
}
