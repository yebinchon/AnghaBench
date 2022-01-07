
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int work; TYPE_1__* se_dev; } ;
struct TYPE_2__ {int tmr_wq; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;
 int target_tmr_work ;

int transport_generic_handle_tmr(
 struct se_cmd *cmd)
{
 INIT_WORK(&cmd->work, target_tmr_work);
 queue_work(cmd->se_dev->tmr_wq, &cmd->work);
 return 0;
}
