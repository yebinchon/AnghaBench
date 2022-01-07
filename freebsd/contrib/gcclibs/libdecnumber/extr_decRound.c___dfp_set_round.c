
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEC_ROUND_CEILING ;
 int DEC_ROUND_DOWN ;
 int DEC_ROUND_FLOOR ;
 int DEC_ROUND_HALF_EVEN ;
 int DEC_ROUND_HALF_UP ;





 int __dfp_rounding_mode ;

void
__dfp_set_round (int mode)
{
  switch (mode)
    {
    case 132:
      __dfp_rounding_mode = DEC_ROUND_FLOOR; break;
    case 131:
      __dfp_rounding_mode = DEC_ROUND_HALF_EVEN; break;
    case 130:
      __dfp_rounding_mode = DEC_ROUND_HALF_UP; break;
    case 129:
      __dfp_rounding_mode = DEC_ROUND_DOWN; break;
    case 128:
      __dfp_rounding_mode = DEC_ROUND_CEILING; break;
    default:

      __dfp_rounding_mode = DEC_ROUND_HALF_EVEN; break;
    }
}
