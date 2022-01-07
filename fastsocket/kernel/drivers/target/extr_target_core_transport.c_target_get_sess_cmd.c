
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int sess_cmd_lock; int sess_cmd_list; scalar_t__ sess_tearing_down; } ;
struct se_cmd {int check_release; int se_cmd_list; int se_cmd_flags; int cmd_kref; } ;


 int ESHUTDOWN ;
 int SCF_ACK_KREF ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int target_get_sess_cmd(struct se_session *se_sess, struct se_cmd *se_cmd,
          bool ack_kref)
{
 unsigned long flags;
 int ret = 0;

 kref_init(&se_cmd->cmd_kref);





 if (ack_kref == 1) {
  kref_get(&se_cmd->cmd_kref);
  se_cmd->se_cmd_flags |= SCF_ACK_KREF;
 }

 spin_lock_irqsave(&se_sess->sess_cmd_lock, flags);
 if (se_sess->sess_tearing_down) {
  ret = -ESHUTDOWN;
  goto out;
 }
 list_add_tail(&se_cmd->se_cmd_list, &se_sess->sess_cmd_list);
 se_cmd->check_release = 1;

out:
 spin_unlock_irqrestore(&se_sess->sess_cmd_lock, flags);
 return ret;
}
