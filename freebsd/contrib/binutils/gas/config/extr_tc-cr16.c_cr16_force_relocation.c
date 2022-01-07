
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixS ;


 scalar_t__ generic_force_reloc (int *) ;

int
cr16_force_relocation (fixS *fix)
{


  if (generic_force_reloc (fix))
    return 1;

  return 0;
}
