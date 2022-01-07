
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int * security; } ;
struct msg_queue {struct kern_ipc_perm q_perm; } ;



__attribute__((used)) static void smack_msg_queue_free_security(struct msg_queue *msq)
{
 struct kern_ipc_perm *kisp = &msq->q_perm;

 kisp->security = ((void*)0);
}
