
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t vdev_children; size_t vdev_ms_count; int * vdev_ms; struct TYPE_6__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;
typedef int u_longlong_t ;
struct TYPE_7__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;


 int dump_metaslab (int ) ;
 int * dump_opt ;
 int fatal (char*,int ) ;
 int fprintf (int ,char*,int ) ;
 int print_vdev_indirect (TYPE_1__*) ;
 int print_vdev_metaslab_header (TYPE_1__*) ;
 int printf (char*) ;
 int stderr ;
 size_t* zopt_object ;
 int zopt_objects ;

__attribute__((used)) static void
dump_metaslabs(spa_t *spa)
{
 vdev_t *vd, *rvd = spa->spa_root_vdev;
 uint64_t m, c = 0, children = rvd->vdev_children;

 (void) printf("\nMetaslabs:\n");

 if (!dump_opt['d'] && zopt_objects > 0) {
  c = zopt_object[0];

  if (c >= children)
   (void) fatal("bad vdev id: %llu", (u_longlong_t)c);

  if (zopt_objects > 1) {
   vd = rvd->vdev_child[c];
   print_vdev_metaslab_header(vd);

   for (m = 1; m < zopt_objects; m++) {
    if (zopt_object[m] < vd->vdev_ms_count)
     dump_metaslab(
         vd->vdev_ms[zopt_object[m]]);
    else
     (void) fprintf(stderr, "bad metaslab "
         "number %llu\n",
         (u_longlong_t)zopt_object[m]);
   }
   (void) printf("\n");
   return;
  }
  children = c + 1;
 }
 for (; c < children; c++) {
  vd = rvd->vdev_child[c];
  print_vdev_metaslab_header(vd);

  print_vdev_indirect(vd);

  for (m = 0; m < vd->vdev_ms_count; m++)
   dump_metaslab(vd->vdev_ms[m]);
  (void) printf("\n");
 }
}
