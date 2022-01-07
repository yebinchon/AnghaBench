
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {unsigned long insn; } ;



const struct exception_table_entry *
search_extable(const struct exception_table_entry *first,
        const struct exception_table_entry *last,
        unsigned long value)
{
 while (first <= last) {
  const struct exception_table_entry *mid;

  mid = ((last - first) >> 1) + first;




  if (mid->insn < value)
   first = mid + 1;
  else if (mid->insn > value)
   last = mid - 1;
  else
   return mid;
        }
        return ((void*)0);
}
