
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ (* mode_rep_extended ) (int,int) ;} ;


 int GET_CLASS_NARROWEST_MODE (int ) ;
 scalar_t__ GET_MODE_BITSIZE (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 int MODE_INT ;
 scalar_t__ SIGN_EXTEND ;
 scalar_t__ UNKNOWN ;
 int VOIDmode ;
 int gcc_assert (int) ;
 scalar_t__** num_sign_bit_copies_in_rep ;
 scalar_t__ stub1 (int,int) ;
 scalar_t__ stub2 (int,int) ;
 TYPE_1__ targetm ;

__attribute__((used)) static void
init_num_sign_bit_copies_in_rep (void)
{
  enum machine_mode mode, in_mode;

  for (in_mode = GET_CLASS_NARROWEST_MODE (MODE_INT); in_mode != VOIDmode;
       in_mode = GET_MODE_WIDER_MODE (mode))
    for (mode = GET_CLASS_NARROWEST_MODE (MODE_INT); mode != in_mode;
  mode = GET_MODE_WIDER_MODE (mode))
      {
 enum machine_mode i;



 gcc_assert (targetm.mode_rep_extended (mode, in_mode) == UNKNOWN
      || GET_MODE_WIDER_MODE (mode) == in_mode);



 for (i = mode; i != in_mode; i = GET_MODE_WIDER_MODE (i))
   {
     enum machine_mode wider = GET_MODE_WIDER_MODE (i);

     if (targetm.mode_rep_extended (i, wider) == SIGN_EXTEND




  || num_sign_bit_copies_in_rep [in_mode][mode])
       num_sign_bit_copies_in_rep [in_mode][mode]
  += GET_MODE_BITSIZE (wider) - GET_MODE_BITSIZE (i);
   }
      }
}
