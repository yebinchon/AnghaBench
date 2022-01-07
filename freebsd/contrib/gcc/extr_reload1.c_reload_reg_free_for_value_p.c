
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
struct TYPE_2__ {scalar_t__ reg_rtx; scalar_t__ in; scalar_t__ out; int when_needed; int opnum; scalar_t__ out_reg; } ;


 size_t GET_MODE (scalar_t__) ;
 int MAX_RECOG_OPERANDS ;
 scalar_t__ NULL_RTX ;
 size_t REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ earlyclobber_operand_p (scalar_t__) ;
 unsigned int** hard_regno_nregs ;
 int n_reloads ;
 int reload_reg_unavailable ;
 TYPE_1__* rld ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 int true_regnum (scalar_t__) ;

__attribute__((used)) static int
reload_reg_free_for_value_p (int start_regno, int regno, int opnum,
        enum reload_type type, rtx value, rtx out,
        int reloadnum, int ignore_address_reloads)
{
  int time1;



  int check_earlyclobber = 0;
  int i;
  int copy = 0;

  if (TEST_HARD_REG_BIT (reload_reg_unavailable, regno))
    return 0;

  if (out == const0_rtx)
    {
      copy = 1;
      out = NULL_RTX;
    }
  switch (type)
    {
    case 132:

      time1 = copy ? 0 : 1;
      break;
    case 128:
      time1 = copy ? 1 : MAX_RECOG_OPERANDS * 5 + 5;
      break;






    case 138:
      time1 = opnum * 4 + 2;
      break;
    case 136:
      time1 = opnum * 4 + 3;
      break;
    case 137:


      time1 = copy ? opnum * 4 + 4 : MAX_RECOG_OPERANDS * 4 + 3;
      break;
    case 134:


      time1 = MAX_RECOG_OPERANDS * 4 + 1;
      break;
    case 133:


      time1 = copy ? MAX_RECOG_OPERANDS * 4 + 2 : MAX_RECOG_OPERANDS * 4 + 3;
      break;
    case 131:
      time1 = MAX_RECOG_OPERANDS * 4 + 4 + opnum;
      break;
    case 129:
      time1 = MAX_RECOG_OPERANDS * 4 + 5 + opnum;
      break;
    default:
      time1 = MAX_RECOG_OPERANDS * 5 + 5;
    }

  for (i = 0; i < n_reloads; i++)
    {
      rtx reg = rld[i].reg_rtx;
      if (reg && REG_P (reg)
   && ((unsigned) regno - true_regnum (reg)
       <= hard_regno_nregs[REGNO (reg)][GET_MODE (reg)] - (unsigned) 1)
   && i != reloadnum)
 {
   rtx other_input = rld[i].in;




   if (true_regnum (reg) != start_regno)
     other_input = NULL_RTX;
   if (! other_input || ! rtx_equal_p (other_input, value)
       || rld[i].out || out)
     {
       int time2;
       switch (rld[i].when_needed)
  {
  case 132:
    time2 = 0;
    break;
  case 138:






    if (type == 136 && reloadnum == i + 1
        && ignore_address_reloads



        && ! rld[reloadnum].out)
      continue;



    if (type == 137 && opnum == rld[i].opnum
        && ignore_address_reloads

        && ! rld[reloadnum].out)
      continue;
    time2 = rld[i].opnum * 4 + 2;
    break;
  case 136:
    if (type == 137 && opnum == rld[i].opnum
        && ignore_address_reloads
        && ! rld[reloadnum].out)
      continue;
    time2 = rld[i].opnum * 4 + 3;
    break;
  case 137:
    time2 = rld[i].opnum * 4 + 4;
    check_earlyclobber = 1;
    break;


  case 134:
    if (type == 133 && reloadnum == i + 1
        && ignore_address_reloads
        && ! rld[reloadnum].out)
      continue;
    time2 = MAX_RECOG_OPERANDS * 4 + 1;
    break;
  case 133:
    time2 = MAX_RECOG_OPERANDS * 4 + 2;
    check_earlyclobber = 1;
    break;
  case 135:
    time2 = MAX_RECOG_OPERANDS * 4 + 3;
    break;
  case 130:


    time2 = MAX_RECOG_OPERANDS * 4 + 4;
    break;



  case 131:
    if (type == 129 && reloadnum == i + 1
        && ignore_address_reloads
        && ! rld[reloadnum].out)
      continue;
    time2 = MAX_RECOG_OPERANDS * 4 + 4 + rld[i].opnum;
    break;
  case 129:
    time2 = MAX_RECOG_OPERANDS * 4 + 5 + rld[i].opnum;
    break;
  case 128:


    if (! rld[i].in || rtx_equal_p (other_input, value))
      {
        time2 = MAX_RECOG_OPERANDS * 4 + 4;

        if (earlyclobber_operand_p (rld[i].out))
   time2 = MAX_RECOG_OPERANDS * 4 + 3;

        break;
      }
    time2 = 1;




    if (out)
      return 0;
    break;
  default:
    return 0;
  }
       if ((time1 >= time2
     && (! rld[i].in || rld[i].out
         || ! rtx_equal_p (other_input, value)))
    || (out && rld[reloadnum].out_reg
        && time2 >= MAX_RECOG_OPERANDS * 4 + 3))
  return 0;
     }
 }
    }


  if (check_earlyclobber && out && earlyclobber_operand_p (out))
    return 0;

  return 1;
}
