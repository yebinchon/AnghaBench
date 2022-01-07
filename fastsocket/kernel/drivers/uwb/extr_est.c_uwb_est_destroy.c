
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int *) ;
 int * uwb_est ;
 scalar_t__ uwb_est_size ;
 scalar_t__ uwb_est_used ;

void uwb_est_destroy(void)
{
 kfree(uwb_est);
 uwb_est = ((void*)0);
 uwb_est_size = uwb_est_used = 0;
}
