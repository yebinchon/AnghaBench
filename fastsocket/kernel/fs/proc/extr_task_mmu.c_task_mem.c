
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mm_struct {unsigned long total_vm; unsigned long hiwater_vm; unsigned long hiwater_rss; unsigned long shared_vm; unsigned long stack_vm; int start_code; int exec_vm; unsigned long reserved_vm; int locked_vm; int nr_ptes; int end_code; } ;
typedef int pte_t ;


 int PAGE_ALIGN (int ) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 unsigned long get_mm_counter (struct mm_struct*,int ) ;
 unsigned long get_mm_rss (struct mm_struct*) ;
 int seq_printf (struct seq_file*,char*,unsigned long,unsigned long,int,unsigned long,unsigned long,unsigned long,int,unsigned long,unsigned long,int,unsigned long) ;
 int swap_usage ;

void task_mem(struct seq_file *m, struct mm_struct *mm)
{
 unsigned long data, text, lib, swap;
 unsigned long hiwater_vm, total_vm, hiwater_rss, total_rss;
 hiwater_vm = total_vm = mm->total_vm;
 if (hiwater_vm < mm->hiwater_vm)
  hiwater_vm = mm->hiwater_vm;
 hiwater_rss = total_rss = get_mm_rss(mm);
 if (hiwater_rss < mm->hiwater_rss)
  hiwater_rss = mm->hiwater_rss;

 data = mm->total_vm - mm->shared_vm - mm->stack_vm;
 text = (PAGE_ALIGN(mm->end_code) - (mm->start_code & PAGE_MASK)) >> 10;
 lib = (mm->exec_vm << (PAGE_SHIFT-10)) - text;
 swap = get_mm_counter(mm, swap_usage);
 seq_printf(m,
  "VmPeak:\t%8lu kB\n"
  "VmSize:\t%8lu kB\n"
  "VmLck:\t%8lu kB\n"
  "VmHWM:\t%8lu kB\n"
  "VmRSS:\t%8lu kB\n"
  "VmData:\t%8lu kB\n"
  "VmStk:\t%8lu kB\n"
  "VmExe:\t%8lu kB\n"
  "VmLib:\t%8lu kB\n"
  "VmPTE:\t%8lu kB\n"
  "VmSwap:\t%8lu kB\n",
  hiwater_vm << (PAGE_SHIFT-10),
  (total_vm - mm->reserved_vm) << (PAGE_SHIFT-10),
  mm->locked_vm << (PAGE_SHIFT-10),
  hiwater_rss << (PAGE_SHIFT-10),
  total_rss << (PAGE_SHIFT-10),
  data << (PAGE_SHIFT-10),
  mm->stack_vm << (PAGE_SHIFT-10), text, lib,
  (PTRS_PER_PTE*sizeof(pte_t)*mm->nr_ptes) >> 10,
  swap << (PAGE_SHIFT-10));
}
