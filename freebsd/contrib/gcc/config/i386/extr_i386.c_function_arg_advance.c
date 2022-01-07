
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {int words; int nregs; int sse_nregs; int regno; int sse_regno; int float_in_sse; int sse_words; int mmx_words; int mmx_nregs; int mmx_regno; } ;
typedef TYPE_1__ CUMULATIVE_ARGS ;


 int AGGREGATE_TYPE_P (scalar_t__) ;



 char* GET_MODE_NAME (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;




 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_DEBUG_ARG ;

 int UNITS_PER_WORD ;
 int examine_argument (int,scalar_t__,int ,int*,int*) ;
 int fprintf (int ,char*,int,int,int,int,char*,int) ;
 int int_size_in_bytes (scalar_t__) ;
 int stderr ;
 int type_natural_mode (scalar_t__) ;

void
function_arg_advance (CUMULATIVE_ARGS *cum, enum machine_mode mode,
        tree type, int named)
{
  int bytes =
    (mode == 145) ? int_size_in_bytes (type) : (int) GET_MODE_SIZE (mode);
  int words = (bytes + UNITS_PER_WORD - 1) / UNITS_PER_WORD;

  if (type)
    mode = type_natural_mode (type);

  if (TARGET_DEBUG_ARG)
    fprintf (stderr, "function_adv (sz=%d, wds=%2d, nregs=%d, ssenregs=%d, "
      "mode=%s, named=%d)\n\n",
      words, cum->words, cum->nregs, cum->sse_nregs,
      GET_MODE_NAME (mode), named);

  if (TARGET_64BIT)
    {
      int int_nregs, sse_nregs;
      if (!examine_argument (mode, type, 0, &int_nregs, &sse_nregs))
 cum->words += words;
      else if (sse_nregs <= cum->sse_nregs && int_nregs <= cum->nregs)
 {
   cum->nregs -= int_nregs;
   cum->sse_nregs -= sse_nregs;
   cum->regno += int_nregs;
   cum->sse_regno += sse_nregs;
 }
      else
 cum->words += words;
    }
  else
    {
      switch (mode)
 {
 default:
   break;

 case 145:
   if (bytes < 0)
     break;


 case 143:
 case 139:
 case 142:
 case 141:
   cum->words += words;
   cum->nregs -= words;
   cum->regno += words;

   if (cum->nregs <= 0)
     {
       cum->nregs = 0;
       cum->regno = 0;
     }
   break;

 case 144:
   if (cum->float_in_sse < 2)
     break;
 case 140:
   if (cum->float_in_sse < 1)
     break;


 case 138:
 case 137:
 case 129:
 case 130:
 case 135:
 case 131:
 case 136:
   if (!type || !AGGREGATE_TYPE_P (type))
     {
       cum->sse_words += words;
       cum->sse_nregs -= 1;
       cum->sse_regno += 1;
       if (cum->sse_nregs <= 0)
  {
    cum->sse_nregs = 0;
    cum->sse_regno = 0;
  }
     }
   break;

 case 128:
 case 132:
 case 133:
 case 134:
   if (!type || !AGGREGATE_TYPE_P (type))
     {
       cum->mmx_words += words;
       cum->mmx_nregs -= 1;
       cum->mmx_regno += 1;
       if (cum->mmx_nregs <= 0)
  {
    cum->mmx_nregs = 0;
    cum->mmx_regno = 0;
  }
     }
   break;
 }
    }
}
