
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {unsigned int arg_end; unsigned int arg_start; unsigned int env_end; unsigned int env_start; } ;


 unsigned int PAGE_SIZE ;
 int access_process_vm (struct task_struct*,unsigned int,char*,unsigned int,int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 void* strnlen (char*,int) ;

__attribute__((used)) static int proc_pid_cmdline(struct task_struct *task, char * buffer)
{
 int res = 0;
 unsigned int len;
 struct mm_struct *mm = get_task_mm(task);
 if (!mm)
  goto out;
 if (!mm->arg_end)
  goto out_mm;

  len = mm->arg_end - mm->arg_start;

 if (len > PAGE_SIZE)
  len = PAGE_SIZE;

 res = access_process_vm(task, mm->arg_start, buffer, len, 0);



 if (res > 0 && buffer[res-1] != '\0' && len < PAGE_SIZE) {
  len = strnlen(buffer, res);
  if (len < res) {
      res = len;
  } else {
   len = mm->env_end - mm->env_start;
   if (len > PAGE_SIZE - res)
    len = PAGE_SIZE - res;
   res += access_process_vm(task, mm->env_start, buffer+res, len, 0);
   res = strnlen(buffer, res);
  }
 }
out_mm:
 mmput(mm);
out:
 return res;
}
