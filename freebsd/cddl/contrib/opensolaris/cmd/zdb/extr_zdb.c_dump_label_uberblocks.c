
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_ashift; struct TYPE_4__* vdev_top; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_label_t ;
typedef int uint64_t ;
typedef int uberblock_t ;


 int VDEV_UBERBLOCK_COUNT (TYPE_1__*) ;
 int VDEV_UBERBLOCK_OFFSET (TYPE_1__*,int) ;
 int ZDB_MAX_UB_HEADER_SIZE ;
 int dump_uberblock (int *,char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ uberblock_verify (int *) ;

__attribute__((used)) static void
dump_label_uberblocks(vdev_label_t *lbl, uint64_t ashift)
{
 vdev_t vd;
 vdev_t *vdp = &vd;
 char header[ZDB_MAX_UB_HEADER_SIZE];

 vd.vdev_ashift = ashift;
 vdp->vdev_top = vdp;

 for (int i = 0; i < VDEV_UBERBLOCK_COUNT(vdp); i++) {
  uint64_t uoff = VDEV_UBERBLOCK_OFFSET(vdp, i);
  uberblock_t *ub = (void *)((char *)lbl + uoff);

  if (uberblock_verify(ub))
   continue;
  (void) snprintf(header, ZDB_MAX_UB_HEADER_SIZE,
      "Uberblock[%d]\n", i);
  dump_uberblock(ub, header, "");
 }
}
