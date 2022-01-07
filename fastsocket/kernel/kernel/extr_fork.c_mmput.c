
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {TYPE_1__* binfmt; int mmlist; int mm_users; } ;
struct TYPE_2__ {int module; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int exit_aio (struct mm_struct*) ;
 int exit_mmap (struct mm_struct*) ;
 int khugepaged_exit (struct mm_struct*) ;
 int ksm_exit (struct mm_struct*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int might_sleep () ;
 int mmdrop (struct mm_struct*) ;
 int mmlist_lock ;
 int module_put (int ) ;
 int put_swap_token (struct mm_struct*) ;
 int set_mm_exe_file (struct mm_struct*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mmput(struct mm_struct *mm)
{
 might_sleep();

 if (atomic_dec_and_test(&mm->mm_users)) {
  exit_aio(mm);
  ksm_exit(mm);
  khugepaged_exit(mm);
  exit_mmap(mm);
  set_mm_exe_file(mm, ((void*)0));
  if (!list_empty(&mm->mmlist)) {
   spin_lock(&mmlist_lock);
   list_del(&mm->mmlist);
   spin_unlock(&mmlist_lock);
  }
  put_swap_token(mm);
  if (mm->binfmt)
   module_put(mm->binfmt->module);
  mmdrop(mm);
 }
}
