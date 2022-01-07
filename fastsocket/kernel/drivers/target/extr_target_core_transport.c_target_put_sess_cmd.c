
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_cmd_lock; } ;
struct se_cmd {int cmd_kref; } ;


 int kref_put_spinlock_irqsave (int *,int ,int *) ;
 int target_release_cmd_kref ;

int target_put_sess_cmd(struct se_session *se_sess, struct se_cmd *se_cmd)
{
 return kref_put_spinlock_irqsave(&se_cmd->cmd_kref, target_release_cmd_kref,
   &se_sess->sess_cmd_lock);
}
