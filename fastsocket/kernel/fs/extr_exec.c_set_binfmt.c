
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {struct linux_binfmt* binfmt; } ;
struct linux_binfmt {int module; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int __module_get (int ) ;
 TYPE_1__* current ;
 int module_put (int ) ;

void set_binfmt(struct linux_binfmt *new)
{
 struct mm_struct *mm = current->mm;

 if (mm->binfmt)
  module_put(mm->binfmt->module);

 mm->binfmt = new;
 if (new)
  __module_get(new->module);
}
