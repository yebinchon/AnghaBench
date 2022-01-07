
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vdev_children; int vdev_detached; TYPE_1__* vdev_top; struct TYPE_7__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_6__ {scalar_t__ vdev_removing; } ;


 int VERIFY (int) ;
 scalar_t__ vdev_is_concrete (TYPE_2__*) ;
 size_t ztest_random (int) ;

__attribute__((used)) static vdev_t *
ztest_random_concrete_vdev_leaf(vdev_t *vd)
{
 if (vd == ((void*)0))
  return (((void*)0));

 if (vd->vdev_children == 0)
  return (vd);

 vdev_t *eligible[vd->vdev_children];
 int eligible_idx = 0, i;
 for (i = 0; i < vd->vdev_children; i++) {
  vdev_t *cvd = vd->vdev_child[i];
  if (cvd->vdev_top->vdev_removing)
   continue;
  if (cvd->vdev_children > 0 ||
      (vdev_is_concrete(cvd) && !cvd->vdev_detached)) {
   eligible[eligible_idx++] = cvd;
  }
 }
 VERIFY(eligible_idx > 0);

 uint64_t child_no = ztest_random(eligible_idx);
 return (ztest_random_concrete_vdev_leaf(eligible[child_no]));
}
