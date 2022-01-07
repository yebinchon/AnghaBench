
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* range; } ;


 scalar_t__ FAIL ;
 unsigned int _IMM16_NEG ;

 unsigned int _SIMM14_NEG ;




 TYPE_1__* score_df_range ;

__attribute__((used)) static int
validate_immediate (int val, unsigned int data_type, int hex_p)
{
  switch (data_type)
    {
    case 129:
      {
        int val_hi = ((val & 0xffff0000) >> 16);

        if (score_df_range[data_type].range[0] <= val_hi
            && val_hi <= score_df_range[data_type].range[1])
   return val_hi;
      }
      break;

    case 128:
      {
        int val_lo = (val & 0xffff);

        if (score_df_range[data_type].range[0] <= val_lo
            && val_lo <= score_df_range[data_type].range[1])
   return val_lo;
      }
      break;

    case 130:
      return val;
      break;

    case 132:
      if (hex_p == 1)
        {
          if (!(val >= -0x2000 && val <= 0x3fff))
            {
              return (int) FAIL;
            }
        }
      else
        {
          if (!(val >= -8192 && val <= 8191))
            {
              return (int) FAIL;
            }
        }

      return val;
      break;

    case 131:
      if (hex_p == 1)
        {
          if (!(val >= -0x7fff && val <= 0xffff && val != 0x8000))
            {
              return (int) FAIL;
            }
        }
      else
        {
          if (!(val >= -32767 && val <= 32768))
            {
              return (int) FAIL;
            }
        }

      val = -val;
      return val;
      break;

    default:
      if (data_type == _SIMM14_NEG || data_type == _IMM16_NEG)
 val = -val;

      if (score_df_range[data_type].range[0] <= val
          && val <= score_df_range[data_type].range[1])
 return val;

      break;
    }

  return (int) FAIL;
}
