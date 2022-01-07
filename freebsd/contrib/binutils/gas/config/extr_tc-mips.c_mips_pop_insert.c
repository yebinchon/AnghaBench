
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECOFF_DEBUGGING ;
 int mips_nonecoff_pseudo_table ;
 int mips_pseudo_table ;
 int pop_insert (int ) ;

void
mips_pop_insert (void)
{
  pop_insert (mips_pseudo_table);
  if (! ECOFF_DEBUGGING)
    pop_insert (mips_nonecoff_pseudo_table);
}
