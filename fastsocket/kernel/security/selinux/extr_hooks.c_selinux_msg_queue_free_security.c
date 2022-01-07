
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_queue {int q_perm; } ;


 int ipc_free_security (int *) ;

__attribute__((used)) static void selinux_msg_queue_free_security(struct msg_queue *msq)
{
 ipc_free_security(&msq->q_perm);
}
