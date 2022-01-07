
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ INTVAL (scalar_t__) ;
 int MEM_P (scalar_t__) ;
 scalar_t__ MEM_SIZE (scalar_t__) ;

bool
mips_mem_fits_mode_p (enum machine_mode mode, rtx x)
{
  rtx size;

  if (!MEM_P (x))
    return 0;

  size = MEM_SIZE (x);
  return size && INTVAL (size) == GET_MODE_SIZE (mode);
}
