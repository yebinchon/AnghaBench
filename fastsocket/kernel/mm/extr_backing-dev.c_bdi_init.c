
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int max_ratio; int * bdi_stat; int completions; scalar_t__ dirty_exceeded; int wb; int work_list; int wb_list; int bdi_list; int rcu_head; int wb_lock; int max_prop_frac; scalar_t__ min_ratio; int * dev; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_RCU_HEAD (int *) ;
 int NR_BDI_STAT_ITEMS ;
 int PROP_FRAC_BASE ;
 int bdi_wb_init (int *,struct backing_dev_info*) ;
 int percpu_counter_destroy (int *) ;
 int percpu_counter_init (int *,int ) ;
 int prop_local_init_percpu (int *) ;
 int spin_lock_init (int *) ;

int bdi_init(struct backing_dev_info *bdi)
{
 int i, err;

 bdi->dev = ((void*)0);

 bdi->min_ratio = 0;
 bdi->max_ratio = 100;
 bdi->max_prop_frac = PROP_FRAC_BASE;
 spin_lock_init(&bdi->wb_lock);
 INIT_RCU_HEAD(&bdi->rcu_head);
 INIT_LIST_HEAD(&bdi->bdi_list);
 INIT_LIST_HEAD(&bdi->wb_list);
 INIT_LIST_HEAD(&bdi->work_list);

 bdi_wb_init(&bdi->wb, bdi);

 for (i = 0; i < NR_BDI_STAT_ITEMS; i++) {
  err = percpu_counter_init(&bdi->bdi_stat[i], 0);
  if (err)
   goto err;
 }

 bdi->dirty_exceeded = 0;
 err = prop_local_init_percpu(&bdi->completions);

 if (err) {
err:
  while (i--)
   percpu_counter_destroy(&bdi->bdi_stat[i]);
 }

 return err;
}
