
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {int per_clear; int * mm; int file; } ;
struct TYPE_3__ {int personality; int flags; } ;


 int PF_RANDOMIZE ;
 int acct_arg_size (struct linux_binprm*,int ) ;
 TYPE_1__* current ;
 int de_thread (TYPE_1__*) ;
 int exec_mmap (int *) ;
 int flush_thread () ;
 int set_mm_exe_file (int *,int ) ;

int flush_old_exec(struct linux_binprm * bprm)
{
 int retval;





 retval = de_thread(current);
 if (retval)
  goto out;

 set_mm_exe_file(bprm->mm, bprm->file);




 acct_arg_size(bprm, 0);
 retval = exec_mmap(bprm->mm);
 if (retval)
  goto out;

 bprm->mm = ((void*)0);

 current->flags &= ~PF_RANDOMIZE;
 flush_thread();
 current->personality &= ~bprm->per_clear;

 return 0;

out:
 return retval;
}
