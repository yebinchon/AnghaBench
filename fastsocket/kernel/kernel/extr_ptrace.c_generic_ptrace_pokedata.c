
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int data ;


 int EIO ;
 int access_process_vm (struct task_struct*,long,long*,int,int) ;

int generic_ptrace_pokedata(struct task_struct *tsk, long addr, long data)
{
 int copied;

 copied = access_process_vm(tsk, addr, &data, sizeof(data), 1);
 return (copied == sizeof(data)) ? 0 : -EIO;
}
