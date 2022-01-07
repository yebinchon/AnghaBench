
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;


 int ASSERT (int ) ;
 int VERIFY0 (int ) ;
 int metaslab_claim_impl (TYPE_1__*,int ,int ,int ) ;
 int spa_min_claim_txg (int ) ;
 int vdev_is_concrete (TYPE_1__*) ;

__attribute__((used)) static void
claim_segment_impl_cb(uint64_t inner_offset, vdev_t *vd, uint64_t offset,
    uint64_t size, void *arg)
{






 ASSERT(vdev_is_concrete(vd));

 VERIFY0(metaslab_claim_impl(vd, offset, size,
     spa_min_claim_txg(vd->vdev_spa)));
}
