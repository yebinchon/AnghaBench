
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;
typedef int gfp_t ;


 int __GFP_FS ;
 int mapping_gfp_mask (struct address_space*) ;

__attribute__((used)) static inline gfp_t btrfs_alloc_write_mask(struct address_space *mapping)
{
 return mapping_gfp_mask(mapping) & ~__GFP_FS;
}
