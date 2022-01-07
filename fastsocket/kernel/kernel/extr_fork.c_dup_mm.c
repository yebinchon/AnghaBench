
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mm_struct {TYPE_1__* binfmt; int total_vm; int hiwater_vm; int hiwater_rss; int * pmd_huge_pte; scalar_t__ last_interval; scalar_t__ token_priority; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int module; } ;


 struct mm_struct* allocate_mm () ;
 TYPE_2__* current ;
 int dup_mm_exe_file (struct mm_struct*,struct mm_struct*) ;
 int dup_mmap (struct mm_struct*,struct mm_struct*) ;
 int free_mm (struct mm_struct*) ;
 int get_mm_rss (struct mm_struct*) ;
 scalar_t__ init_new_context (struct task_struct*,struct mm_struct*) ;
 int memcpy (struct mm_struct*,struct mm_struct*,int) ;
 int mm_free_pgd (struct mm_struct*) ;
 int mm_init (struct mm_struct*,struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int try_module_get (int ) ;

struct mm_struct *dup_mm(struct task_struct *tsk)
{
 struct mm_struct *mm, *oldmm = current->mm;
 int err;

 if (!oldmm)
  return ((void*)0);

 mm = allocate_mm();
 if (!mm)
  goto fail_nomem;

 memcpy(mm, oldmm, sizeof(*mm));


 mm->token_priority = 0;
 mm->last_interval = 0;





 if (!mm_init(mm, tsk))
  goto fail_nomem;

 if (init_new_context(tsk, mm))
  goto fail_nocontext;

 dup_mm_exe_file(oldmm, mm);

 err = dup_mmap(mm, oldmm);
 if (err)
  goto free_pt;

 mm->hiwater_rss = get_mm_rss(mm);
 mm->hiwater_vm = mm->total_vm;

 if (mm->binfmt && !try_module_get(mm->binfmt->module))
  goto free_pt;

 return mm;

free_pt:

 mm->binfmt = ((void*)0);
 mmput(mm);

fail_nomem:
 return ((void*)0);

fail_nocontext:




 mm_free_pgd(mm);
 free_mm(mm);
 return ((void*)0);
}
