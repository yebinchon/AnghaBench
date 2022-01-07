
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* b_last_allocated_ptr; void* b_last_allocated_key; } ;
struct nilfs_direct {TYPE_1__ d_bmap; } ;
typedef void* __u64 ;



__attribute__((used)) static void nilfs_direct_set_target_v(struct nilfs_direct *direct,
          __u64 key, __u64 ptr)
{
 direct->d_bmap.b_last_allocated_key = key;
 direct->d_bmap.b_last_allocated_ptr = ptr;
}
