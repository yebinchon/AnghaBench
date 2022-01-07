
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct sparc_args {scalar_t__ words; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int BLKmode ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ ROUND_ADVANCE (int) ;
 scalar_t__ TARGET_ARCH32 ;
 int function_arg_slotno (struct sparc_args*,int,scalar_t__,int,int ,int*,int*) ;
 int int_size_in_bytes (scalar_t__) ;

void
function_arg_advance (struct sparc_args *cum, enum machine_mode mode,
        tree type, int named)
{
  int slotno, regno, padding;


  slotno = function_arg_slotno (cum, mode, type, named, 0, &regno, &padding);


  if (slotno != -1)
    cum->words += padding;

  if (TARGET_ARCH32)
    {
      cum->words += (mode != BLKmode
       ? ROUND_ADVANCE (GET_MODE_SIZE (mode))
       : ROUND_ADVANCE (int_size_in_bytes (type)));
    }
  else
    {
      if (type && AGGREGATE_TYPE_P (type))
 {
   int size = int_size_in_bytes (type);

   if (size <= 8)
     ++cum->words;
   else if (size <= 16)
     cum->words += 2;
   else
     ++cum->words;
 }
      else
 {
   cum->words += (mode != BLKmode
    ? ROUND_ADVANCE (GET_MODE_SIZE (mode))
    : ROUND_ADVANCE (int_size_in_bytes (type)));
 }
    }
}
