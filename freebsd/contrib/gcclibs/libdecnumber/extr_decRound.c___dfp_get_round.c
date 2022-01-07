
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_DEC_DOWNWARD ;
 int FE_DEC_TONEAREST ;
 int FE_DEC_TONEARESTFROMZERO ;
 int FE_DEC_TOWARDZERO ;
 int FE_DEC_UPWARD ;
 int __dfp_rounding_mode ;

int
__dfp_get_round (void)
{
  int mode;

  switch (__dfp_rounding_mode)
    {
    case 130:
      mode = FE_DEC_DOWNWARD; break;
    case 129:
      mode = FE_DEC_TONEAREST; break;
    case 128:
      mode = FE_DEC_TONEARESTFROMZERO; break;
    case 131:
      mode = FE_DEC_TOWARDZERO; break;
    case 132:
      mode = FE_DEC_UPWARD; break;
    default:

      mode = -1;
    }
  return mode;
}
