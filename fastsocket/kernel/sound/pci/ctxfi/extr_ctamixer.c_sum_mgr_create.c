
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sum_mgr {int put_sum; int get_sum; int mgr_lock; int mgr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SUM ;
 int SUM_RESOURCE_NUM ;
 int get_sum_rsc ;
 int kfree (struct sum_mgr*) ;
 struct sum_mgr* kzalloc (int,int ) ;
 int put_sum_rsc ;
 int rsc_mgr_init (int *,int ,int ,void*) ;
 int spin_lock_init (int *) ;

int sum_mgr_create(void *hw, struct sum_mgr **rsum_mgr)
{
 int err;
 struct sum_mgr *sum_mgr;

 *rsum_mgr = ((void*)0);
 sum_mgr = kzalloc(sizeof(*sum_mgr), GFP_KERNEL);
 if (!sum_mgr)
  return -ENOMEM;

 err = rsc_mgr_init(&sum_mgr->mgr, SUM, SUM_RESOURCE_NUM, hw);
 if (err)
  goto error;

 spin_lock_init(&sum_mgr->mgr_lock);

 sum_mgr->get_sum = get_sum_rsc;
 sum_mgr->put_sum = put_sum_rsc;

 *rsum_mgr = sum_mgr;

 return 0;

error:
 kfree(sum_mgr);
 return err;
}
