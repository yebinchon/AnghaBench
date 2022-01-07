
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int mode; int first_special; int extend_mode; int mult; void* delta; int extend; void* step; int base; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int UNKNOWN ;
 int VOIDmode ;
 void* const0_rtx ;
 int const1_rtx ;

__attribute__((used)) static bool
iv_constant (struct rtx_iv *iv, rtx cst, enum machine_mode mode)
{
  if (mode == VOIDmode)
    mode = GET_MODE (cst);

  iv->mode = mode;
  iv->base = cst;
  iv->step = const0_rtx;
  iv->first_special = 0;
  iv->extend = UNKNOWN;
  iv->extend_mode = iv->mode;
  iv->delta = const0_rtx;
  iv->mult = const1_rtx;

  return 1;
}
