
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct inode {int dummy; } ;


 int PIDTYPE_PID ;
 struct task_struct* get_pid_task (int ,int ) ;
 int proc_pid (struct inode*) ;

__attribute__((used)) static inline struct task_struct *get_proc_task(struct inode *inode)
{
 return get_pid_task(proc_pid(inode), PIDTYPE_PID);
}
