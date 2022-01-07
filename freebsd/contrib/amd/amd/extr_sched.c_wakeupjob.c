
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr; } ;
typedef TYPE_1__ pjob ;


 int ins_que (int *,int *) ;
 int proc_list_head ;
 int rem_que (int *) ;
 int task_notify_todo ;

__attribute__((used)) static void
wakeupjob(pjob *p)
{
  rem_que(&p->hdr);
  ins_que(&p->hdr, &proc_list_head);
  task_notify_todo++;
}
