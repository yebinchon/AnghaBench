
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {unsigned long p; int * page; } ;


 int EFAULT ;
 int MAX_ARG_PAGES ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 scalar_t__ copy_to_user (void*,char*,unsigned long) ;
 char* kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static int elf_fdpic_transfer_args_to_stack(struct linux_binprm *bprm,
         unsigned long *_sp)
{
 unsigned long index, stop, sp;
 char *src;
 int ret = 0;

 stop = bprm->p >> PAGE_SHIFT;
 sp = *_sp;

 for (index = MAX_ARG_PAGES - 1; index >= stop; index--) {
  src = kmap(bprm->page[index]);
  sp -= PAGE_SIZE;
  if (copy_to_user((void *) sp, src, PAGE_SIZE) != 0)
   ret = -EFAULT;
  kunmap(bprm->page[index]);
  if (ret < 0)
   goto out;
 }

 *_sp = (*_sp - (MAX_ARG_PAGES * PAGE_SIZE - bprm->p)) & ~15;

out:
 return ret;
}
