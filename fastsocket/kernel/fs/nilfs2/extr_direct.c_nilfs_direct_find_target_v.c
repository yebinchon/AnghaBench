
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_direct {int d_bmap; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ NILFS_BMAP_INVALID_PTR ;
 scalar_t__ nilfs_bmap_find_target_in_group (int *) ;
 scalar_t__ nilfs_bmap_find_target_seq (int *,scalar_t__) ;

__attribute__((used)) static __u64
nilfs_direct_find_target_v(const struct nilfs_direct *direct, __u64 key)
{
 __u64 ptr;

 ptr = nilfs_bmap_find_target_seq(&direct->d_bmap, key);
 if (ptr != NILFS_BMAP_INVALID_PTR)

  return ptr;
 else

  return nilfs_bmap_find_target_in_group(&direct->d_bmap);
}
