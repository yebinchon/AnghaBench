
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int gfp_mask; } ;
typedef int gfp_t ;


 int __GFP_BITS_MASK ;

__attribute__((used)) static inline gfp_t root_gfp_mask(struct radix_tree_root *root)
{
 return root->gfp_mask & __GFP_BITS_MASK;
}
