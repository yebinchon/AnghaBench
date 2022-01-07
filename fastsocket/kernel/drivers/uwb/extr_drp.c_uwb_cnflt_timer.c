
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_cnflt_alien {int cnflt_update_work; TYPE_1__* rc; } ;
struct TYPE_2__ {int rsv_workq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void uwb_cnflt_timer(unsigned long arg)
{
 struct uwb_cnflt_alien *cnflt = (struct uwb_cnflt_alien *)arg;

 queue_work(cnflt->rc->rsv_workq, &cnflt->cnflt_update_work);
}
