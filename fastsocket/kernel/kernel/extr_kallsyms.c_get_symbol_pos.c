
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ _einittext ;
 scalar_t__ _end ;
 scalar_t__ _etext ;
 scalar_t__ all_var ;
 scalar_t__ is_kernel_inittext (unsigned long) ;
 unsigned long* kallsyms_addresses ;
 unsigned long kallsyms_num_syms ;

__attribute__((used)) static unsigned long get_symbol_pos(unsigned long addr,
        unsigned long *symbolsize,
        unsigned long *offset)
{
 unsigned long symbol_start = 0, symbol_end = 0;
 unsigned long i, low, high, mid;


 BUG_ON(!kallsyms_addresses);


 low = 0;
 high = kallsyms_num_syms;

 while (high - low > 1) {
  mid = low + (high - low) / 2;
  if (kallsyms_addresses[mid] <= addr)
   low = mid;
  else
   high = mid;
 }





 while (low && kallsyms_addresses[low-1] == kallsyms_addresses[low])
  --low;

 symbol_start = kallsyms_addresses[low];


 for (i = low + 1; i < kallsyms_num_syms; i++) {
  if (kallsyms_addresses[i] > symbol_start) {
   symbol_end = kallsyms_addresses[i];
   break;
  }
 }


 if (!symbol_end) {
  if (is_kernel_inittext(addr))
   symbol_end = (unsigned long)_einittext;
  else if (all_var)
   symbol_end = (unsigned long)_end;
  else
   symbol_end = (unsigned long)_etext;
 }

 if (symbolsize)
  *symbolsize = symbol_end - symbol_start;
 if (offset)
  *offset = addr - symbol_start;

 return low;
}
