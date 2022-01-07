
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_queue {int q_perm; } ;






 int MSGQ__ASSOCIATE ;
 int MSGQ__DESTROY ;
 int MSGQ__GETATTR ;
 int MSGQ__SETATTR ;


 int SYSTEM__IPC_INFO ;
 int current ;
 int ipc_has_perm (int *,int) ;
 int task_has_system (int ,int ) ;

__attribute__((used)) static int selinux_msg_queue_msgctl(struct msg_queue *msq, int cmd)
{
 int err;
 int perms;

 switch (cmd) {
 case 133:
 case 129:

  return task_has_system(current, SYSTEM__IPC_INFO);
 case 130:
 case 128:
  perms = MSGQ__GETATTR | MSGQ__ASSOCIATE;
  break;
 case 131:
  perms = MSGQ__SETATTR;
  break;
 case 132:
  perms = MSGQ__DESTROY;
  break;
 default:
  return 0;
 }

 err = ipc_has_perm(&msq->q_perm, perms);
 return err;
}
