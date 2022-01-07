
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 int BITS_PER_UNIT ;
 int CEIL (int,int) ;
 int GEN_INT (long) ;
 int GET_MODE_SIZE (int) ;
 int MIN (int,int) ;
 int assemble_integer (int ,int ,unsigned int,int) ;
 unsigned int min_align (unsigned int,int) ;
 int real_to_target (long*,int *,int) ;

void
assemble_real (REAL_VALUE_TYPE d, enum machine_mode mode, unsigned int align)
{
  long data[4] = {0, 0, 0, 0};
  int i;
  int bitsize, nelts, nunits, units_per;
  nunits = GET_MODE_SIZE (mode);
  bitsize = nunits * BITS_PER_UNIT;
  nelts = CEIL (bitsize, 32);
  units_per = 32 / BITS_PER_UNIT;

  real_to_target (data, &d, mode);


  assemble_integer (GEN_INT (data[0]), MIN (nunits, units_per), align, 1);
  nunits -= units_per;


  align = min_align (align, 32);

  for (i = 1; i < nelts; i++)
    {
      assemble_integer (GEN_INT (data[i]), MIN (nunits, units_per), align, 1);
      nunits -= units_per;
    }
}
