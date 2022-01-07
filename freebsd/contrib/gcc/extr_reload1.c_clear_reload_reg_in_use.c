
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int when_needed; int opnum; size_t mode; scalar_t__ reg_rtx; } ;
typedef int HARD_REG_SET ;


 int CLEAR_HARD_REG_BIT (int ,unsigned int) ;
 int gcc_unreachable () ;
 unsigned int** hard_regno_nregs ;
 int n_reloads ;
 int reload_reg_used ;
 int * reload_reg_used_in_inpaddr_addr ;
 int * reload_reg_used_in_input ;
 int * reload_reg_used_in_input_addr ;
 int reload_reg_used_in_insn ;
 int reload_reg_used_in_op_addr ;
 int reload_reg_used_in_op_addr_reload ;
 int reload_reg_used_in_other_addr ;
 int * reload_reg_used_in_outaddr_addr ;
 int * reload_reg_used_in_output ;
 int * reload_reg_used_in_output_addr ;
 TYPE_1__* rld ;
 unsigned int true_regnum (scalar_t__) ;

__attribute__((used)) static void
clear_reload_reg_in_use (unsigned int regno, int opnum,
    enum reload_type type, enum machine_mode mode)
{
  unsigned int nregs = hard_regno_nregs[regno][mode];
  unsigned int start_regno, end_regno, r;
  int i;




  int check_opnum = 0;
  int check_any = 0;
  HARD_REG_SET *used_in_set;

  switch (type)
    {
    case 128:
      used_in_set = &reload_reg_used;
      break;

    case 136:
      used_in_set = &reload_reg_used_in_input_addr[opnum];
      break;

    case 138:
      check_opnum = 1;
      used_in_set = &reload_reg_used_in_inpaddr_addr[opnum];
      break;

    case 129:
      used_in_set = &reload_reg_used_in_output_addr[opnum];
      break;

    case 131:
      check_opnum = 1;
      used_in_set = &reload_reg_used_in_outaddr_addr[opnum];
      break;

    case 133:
      used_in_set = &reload_reg_used_in_op_addr;
      break;

    case 134:
      check_any = 1;
      used_in_set = &reload_reg_used_in_op_addr_reload;
      break;

    case 132:
      used_in_set = &reload_reg_used_in_other_addr;
      check_any = 1;
      break;

    case 137:
      used_in_set = &reload_reg_used_in_input[opnum];
      break;

    case 130:
      used_in_set = &reload_reg_used_in_output[opnum];
      break;

    case 135:
      used_in_set = &reload_reg_used_in_insn;
      break;
    default:
      gcc_unreachable ();
    }
  start_regno = regno;
  end_regno = regno + nregs;
  if (check_opnum || check_any)
    {
      for (i = n_reloads - 1; i >= 0; i--)
 {
   if (rld[i].when_needed == type
       && (check_any || rld[i].opnum == opnum)
       && rld[i].reg_rtx)
     {
       unsigned int conflict_start = true_regnum (rld[i].reg_rtx);
       unsigned int conflict_end
  = (conflict_start
     + hard_regno_nregs[conflict_start][rld[i].mode]);



       if (conflict_start <= start_regno && conflict_end > start_regno)
  start_regno = conflict_end;


       if (conflict_start > start_regno && conflict_start < end_regno)
  end_regno = conflict_start;
     }
 }
    }

  for (r = start_regno; r < end_regno; r++)
    CLEAR_HARD_REG_BIT (*used_in_set, r);
}
