
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int se_dev; TYPE_1__* se_tfo; } ;
struct TYPE_2__ {int (* write_pending ) (struct se_cmd*) ;} ;


 int EAGAIN ;
 int ENOMEM ;
 int pr_debug (char*,struct se_cmd*) ;
 int stub1 (struct se_cmd*) ;
 int transport_handle_queue_full (struct se_cmd*,int ) ;

__attribute__((used)) static void transport_write_pending_qf(struct se_cmd *cmd)
{
 int ret;

 ret = cmd->se_tfo->write_pending(cmd);
 if (ret == -EAGAIN || ret == -ENOMEM) {
  pr_debug("Handling write_pending QUEUE__FULL: se_cmd: %p\n",
    cmd);
  transport_handle_queue_full(cmd, cmd->se_dev);
 }
}
