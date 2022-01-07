
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;


 int strncpy (char*,int ,int) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

char *get_task_comm(char *buf, struct task_struct *tsk)
{

 task_lock(tsk);
 strncpy(buf, tsk->comm, sizeof(tsk->comm));
 task_unlock(tsk);
 return buf;
}
