
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ all_var ;
 int is_kernel (unsigned long) ;
 scalar_t__ is_kernel_inittext (unsigned long) ;
 scalar_t__ is_kernel_text (unsigned long) ;

__attribute__((used)) static int is_ksym_addr(unsigned long addr)
{
 if (all_var)
  return is_kernel(addr);

 return is_kernel_text(addr) || is_kernel_inittext(addr);
}
