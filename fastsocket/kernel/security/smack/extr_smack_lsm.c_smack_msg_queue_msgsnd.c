
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_queue {int dummy; } ;
struct msg_msg {int dummy; } ;


 int smack_flags_to_may (int) ;
 int smk_curacc_msq (struct msg_queue*,int) ;

__attribute__((used)) static int smack_msg_queue_msgsnd(struct msg_queue *msq, struct msg_msg *msg,
      int msqflg)
{
 int may;

 may = smack_flags_to_may(msqflg);
 return smk_curacc_msq(msq, may);
}
