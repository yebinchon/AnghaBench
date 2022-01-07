
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sum_mgr {int mgr; } ;


 int kfree (struct sum_mgr*) ;
 int rsc_mgr_uninit (int *) ;

int sum_mgr_destroy(struct sum_mgr *sum_mgr)
{
 rsc_mgr_uninit(&sum_mgr->mgr);
 kfree(sum_mgr);
 return 0;
}
