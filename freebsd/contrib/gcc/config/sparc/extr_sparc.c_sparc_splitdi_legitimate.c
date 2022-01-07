
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int REGNO (int ) ;
 int gcc_assert (int ) ;
 scalar_t__ mem_min_alignment (int ,int) ;
 int offsettable_memref_p (int ) ;
 int reload_completed ;

int
sparc_splitdi_legitimate (rtx reg, rtx mem)
{

  gcc_assert (reload_completed);


  if (! offsettable_memref_p (mem))
    return 0;



  if ((REGNO (reg) % 2) == 0
      && mem_min_alignment (mem, 8))
    return 0;


  return 1;
}
