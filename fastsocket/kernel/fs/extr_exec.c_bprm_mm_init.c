
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct linux_binprm {struct mm_struct* mm; } ;


 int ENOMEM ;
 int __bprm_mm_init (struct linux_binprm*) ;
 int current ;
 int init_new_context (int ,struct mm_struct*) ;
 struct mm_struct* mm_alloc () ;
 int mmdrop (struct mm_struct*) ;

int bprm_mm_init(struct linux_binprm *bprm)
{
 int err;
 struct mm_struct *mm = ((void*)0);

 bprm->mm = mm = mm_alloc();
 err = -ENOMEM;
 if (!mm)
  goto err;

 err = init_new_context(current, mm);
 if (err)
  goto err;

 err = __bprm_mm_init(bprm);
 if (err)
  goto err;

 return 0;

err:
 if (mm) {
  bprm->mm = ((void*)0);
  mmdrop(mm);
 }

 return err;
}
