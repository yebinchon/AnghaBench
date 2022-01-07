
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int comm; } ;


 int TASK_COMM_LEN ;
 int memset (int ,int ,int ) ;
 int perf_event_comm (struct task_struct*) ;
 int strlcpy (int ,char*,int) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int wmb () ;

void set_task_comm(struct task_struct *tsk, char *buf)
{
 task_lock(tsk);







 memset(tsk->comm, 0, TASK_COMM_LEN);
 wmb();
 strlcpy(tsk->comm, buf, sizeof(tsk->comm));
 task_unlock(tsk);
 perf_event_comm(tsk);
}
