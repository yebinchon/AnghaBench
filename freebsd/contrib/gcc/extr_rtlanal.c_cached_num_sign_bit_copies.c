
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ARITHMETIC_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 unsigned int num_sign_bit_copies1 (scalar_t__,int,scalar_t__,int,unsigned int) ;

__attribute__((used)) static unsigned int
cached_num_sign_bit_copies (rtx x, enum machine_mode mode, rtx known_x,
       enum machine_mode known_mode,
       unsigned int known_ret)
{
  if (x == known_x && mode == known_mode)
    return known_ret;





  if (ARITHMETIC_P (x))
    {
      rtx x0 = XEXP (x, 0);
      rtx x1 = XEXP (x, 1);


      if (x0 == x1)
 return
   num_sign_bit_copies1 (x, mode, x0, mode,
    cached_num_sign_bit_copies (x0, mode, known_x,
           known_mode,
           known_ret));


      if (ARITHMETIC_P (x0)
   && (x1 == XEXP (x0, 0) || x1 == XEXP (x0, 1)))
 return
   num_sign_bit_copies1 (x, mode, x1, mode,
    cached_num_sign_bit_copies (x1, mode, known_x,
           known_mode,
           known_ret));

      if (ARITHMETIC_P (x1)
   && (x0 == XEXP (x1, 0) || x0 == XEXP (x1, 1)))
 return
   num_sign_bit_copies1 (x, mode, x0, mode,
    cached_num_sign_bit_copies (x0, mode, known_x,
           known_mode,
           known_ret));
    }

  return num_sign_bit_copies1 (x, mode, known_x, known_mode, known_ret);
}
