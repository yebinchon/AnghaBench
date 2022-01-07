
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ NILFS_DIRECT_KEY_MAX ;

__attribute__((used)) static int nilfs_direct_check_insert(const struct nilfs_bmap *bmap, __u64 key)
{
 return key > NILFS_DIRECT_KEY_MAX;
}
