
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int nilfs_bmap_lookup_at_level (struct nilfs_bmap*,int ,int,int *) ;

__attribute__((used)) static inline int nilfs_bmap_lookup(struct nilfs_bmap *bmap, __u64 key,
        __u64 *ptr)
{
 return nilfs_bmap_lookup_at_level(bmap, key, 1, ptr);
}
