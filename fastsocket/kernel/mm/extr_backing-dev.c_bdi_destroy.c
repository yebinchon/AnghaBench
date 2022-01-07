
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bdi_writeback {int b_more_io; int b_io; int b_dirty; } ;
struct TYPE_3__ {int b_more_io; int b_io; int b_dirty; } ;
struct backing_dev_info {int completions; int * bdi_stat; TYPE_1__ wb; } ;
struct TYPE_4__ {struct bdi_writeback wb; } ;


 int NR_BDI_STAT_ITEMS ;
 scalar_t__ bdi_has_dirty_io (struct backing_dev_info*) ;
 int bdi_unregister (struct backing_dev_info*) ;
 TYPE_2__ default_backing_dev_info ;
 int inode_lock ;
 int list_splice (int *,int *) ;
 int percpu_counter_destroy (int *) ;
 int prop_local_destroy_percpu (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bdi_destroy(struct backing_dev_info *bdi)
{
 int i;





 if (bdi_has_dirty_io(bdi)) {
  struct bdi_writeback *dst = &default_backing_dev_info.wb;

  spin_lock(&inode_lock);
  list_splice(&bdi->wb.b_dirty, &dst->b_dirty);
  list_splice(&bdi->wb.b_io, &dst->b_io);
  list_splice(&bdi->wb.b_more_io, &dst->b_more_io);
  spin_unlock(&inode_lock);
 }

 bdi_unregister(bdi);

 for (i = 0; i < NR_BDI_STAT_ITEMS; i++)
  percpu_counter_destroy(&bdi->bdi_stat[i]);

 prop_local_destroy_percpu(&bdi->completions);
}
