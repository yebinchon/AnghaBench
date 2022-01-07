
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_direct {int dummy; } ;
typedef int __u64 ;


 int nilfs_bmap_dptr_to_ptr (int ) ;
 int * nilfs_direct_dptrs (struct nilfs_direct const*) ;

__attribute__((used)) static inline __u64
nilfs_direct_get_ptr(const struct nilfs_direct *direct, __u64 key)
{
 return nilfs_bmap_dptr_to_ptr(*(nilfs_direct_dptrs(direct) + key));
}
