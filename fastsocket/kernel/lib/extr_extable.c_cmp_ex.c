
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {scalar_t__ insn; } ;



__attribute__((used)) static int cmp_ex(const void *a, const void *b)
{
 const struct exception_table_entry *x = a, *y = b;


 if (x->insn > y->insn)
  return 1;
 if (x->insn < y->insn)
  return -1;
 return 0;
}
