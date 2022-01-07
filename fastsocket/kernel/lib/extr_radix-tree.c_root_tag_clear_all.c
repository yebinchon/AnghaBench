
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int gfp_mask; } ;


 int __GFP_BITS_MASK ;

__attribute__((used)) static inline void root_tag_clear_all(struct radix_tree_root *root)
{
 root->gfp_mask &= __GFP_BITS_MASK;
}
