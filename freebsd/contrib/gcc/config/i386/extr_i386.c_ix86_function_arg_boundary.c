
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE_ALIGNMENT (int) ;
 int PARM_BOUNDARY ;
 int SSE_REG_MODE_P (int) ;
 int TARGET_64BIT ;
 int TARGET_SSE ;
 int TYPE_ALIGN (scalar_t__) ;
 int contains_128bit_aligned_vector_p (scalar_t__) ;

int
ix86_function_arg_boundary (enum machine_mode mode, tree type)
{
  int align;
  if (type)
    align = TYPE_ALIGN (type);
  else
    align = GET_MODE_ALIGNMENT (mode);
  if (align < PARM_BOUNDARY)
    align = PARM_BOUNDARY;
  if (!TARGET_64BIT)
    {







      if (!TARGET_SSE)
 align = PARM_BOUNDARY;
      else if (!type)
 {
   if (!SSE_REG_MODE_P (mode))
     align = PARM_BOUNDARY;
 }
      else
 {
   if (!contains_128bit_aligned_vector_p (type))
     align = PARM_BOUNDARY;
 }
    }
  if (align > 128)
    align = 128;
  return align;
}
