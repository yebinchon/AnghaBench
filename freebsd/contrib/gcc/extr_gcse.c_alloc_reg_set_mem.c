
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_set {int dummy; } ;


 scalar_t__ REG_SET_TABLE_SLOP ;
 int gcalloc (scalar_t__,int) ;
 int gcc_obstack_init (int *) ;
 int reg_set_obstack ;
 int reg_set_table ;
 scalar_t__ reg_set_table_size ;

__attribute__((used)) static void
alloc_reg_set_mem (int n_regs)
{
  reg_set_table_size = n_regs + REG_SET_TABLE_SLOP;
  reg_set_table = gcalloc (reg_set_table_size, sizeof (struct reg_set *));

  gcc_obstack_init (&reg_set_obstack);
}
