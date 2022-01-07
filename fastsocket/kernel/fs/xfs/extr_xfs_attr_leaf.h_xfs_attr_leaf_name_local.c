
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* entries; } ;
typedef TYPE_2__ xfs_attr_leafblock_t ;
typedef int xfs_attr_leaf_name_local_t ;
struct TYPE_4__ {int nameidx; } ;


 size_t be16_to_cpu (int ) ;

__attribute__((used)) static inline xfs_attr_leaf_name_local_t *
xfs_attr_leaf_name_local(xfs_attr_leafblock_t *leafp, int idx)
{
 return (xfs_attr_leaf_name_local_t *)
  &((char *)leafp)[be16_to_cpu(leafp->entries[idx].nameidx)];
}
