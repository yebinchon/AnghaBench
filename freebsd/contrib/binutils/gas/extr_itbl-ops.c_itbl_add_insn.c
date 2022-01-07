
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sbit; int ebit; } ;
struct itbl_entry {unsigned long flags; TYPE_1__ range; } ;


 struct itbl_entry* alloc_entry (int ,int ,char*,unsigned long) ;
 int e_insn ;
 int get_processor (int) ;
 int itbl_num_opcodes ;

struct itbl_entry *
itbl_add_insn (int yyprocessor, char *name, unsigned long value,
        int sbit, int ebit, unsigned long flags)
{
  struct itbl_entry *e;
  e = alloc_entry (get_processor (yyprocessor), e_insn, name, value);
  if (e)
    {
      e->range.sbit = sbit;
      e->range.ebit = ebit;
      e->flags = flags;
      itbl_num_opcodes++;
    }
  return e;
}
