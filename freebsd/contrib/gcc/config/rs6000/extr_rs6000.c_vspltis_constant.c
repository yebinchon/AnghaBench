
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ EASY_VECTOR_15 (scalar_t__) ;
 scalar_t__ EASY_VECTOR_15_ADD_SELF (scalar_t__) ;
 int GET_MODE (int ) ;
 unsigned int GET_MODE_BITSIZE (int) ;
 int GET_MODE_INNER (int) ;
 unsigned int GET_MODE_MASK (int) ;
 unsigned int GET_MODE_NUNITS (int) ;
 scalar_t__ const_vector_elt_as_int (int ,unsigned int) ;

__attribute__((used)) static bool
vspltis_constant (rtx op, unsigned step, unsigned copies)
{
  enum machine_mode mode = GET_MODE (op);
  enum machine_mode inner = GET_MODE_INNER (mode);

  unsigned i;
  unsigned nunits = GET_MODE_NUNITS (mode);
  unsigned bitsize = GET_MODE_BITSIZE (inner);
  unsigned mask = GET_MODE_MASK (inner);

  HOST_WIDE_INT val = const_vector_elt_as_int (op, nunits - 1);
  HOST_WIDE_INT splat_val = val;
  HOST_WIDE_INT msb_val = val > 0 ? 0 : -1;


  for (i = 2; i <= copies; i *= 2)
    {
      HOST_WIDE_INT small_val;
      bitsize /= 2;
      small_val = splat_val >> bitsize;
      mask >>= bitsize;
      if (splat_val != ((small_val << bitsize) | (small_val & mask)))
 return 0;
      splat_val = small_val;
    }


  if (EASY_VECTOR_15 (splat_val))
    ;




  else if (EASY_VECTOR_15_ADD_SELF (splat_val)
           && (splat_val >= 0 || (step == 1 && copies == 1)))
    ;

  else
    return 0;



  for (i = 0; i < nunits - 1; ++i)
    {
      HOST_WIDE_INT desired_val;
      if (((i + 1) & (step - 1)) == 0)
 desired_val = val;
      else
 desired_val = msb_val;

      if (desired_val != const_vector_elt_as_int (op, i))
 return 0;
    }

  return 1;
}
