
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {scalar_t__* saved_auxv; } ;


 int IS_ERR (struct mm_struct*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct mm_struct*) ;
 int memcpy (char*,scalar_t__*,int) ;
 struct mm_struct* mm_for_maps (struct task_struct*) ;
 int mmput (struct mm_struct*) ;

__attribute__((used)) static int proc_pid_auxv(struct task_struct *task, char *buffer)
{
 struct mm_struct *mm = mm_for_maps(task);
 int res = PTR_ERR(mm);
 if (mm && !IS_ERR(mm)) {
  unsigned int nwords = 0;
  do {
   nwords += 2;
  } while (mm->saved_auxv[nwords - 2] != 0);
  res = nwords * sizeof(mm->saved_auxv[0]);
  if (res > PAGE_SIZE)
   res = PAGE_SIZE;
  memcpy(buffer, mm->saved_auxv, res);
  mmput(mm);
 }
 return res;
}
