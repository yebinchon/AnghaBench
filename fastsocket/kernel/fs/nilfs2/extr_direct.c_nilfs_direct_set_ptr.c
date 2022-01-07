
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_direct {int dummy; } ;
typedef int __u64 ;


 int nilfs_bmap_ptr_to_dptr (int) ;
 int * nilfs_direct_dptrs (struct nilfs_direct*) ;

__attribute__((used)) static inline void nilfs_direct_set_ptr(struct nilfs_direct *direct,
     __u64 key, __u64 ptr)
{
 *(nilfs_direct_dptrs(direct) + key) = nilfs_bmap_ptr_to_dptr(ptr);
}
