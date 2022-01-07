
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __sched_text_end ;
 scalar_t__ __sched_text_start ;
 scalar_t__ in_lock_functions (unsigned long) ;

int in_sched_functions(unsigned long addr)
{
 return in_lock_functions(addr) ||
  (addr >= (unsigned long)__sched_text_start
  && addr < (unsigned long)__sched_text_end);
}
