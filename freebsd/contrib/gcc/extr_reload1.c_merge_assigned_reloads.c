
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {scalar_t__ in; scalar_t__ when_needed; scalar_t__ out; scalar_t__ reg_rtx; int opnum; } ;


 int MAX_RECOG_OPERANDS ;
 scalar_t__ RELOAD_FOR_INPADDR_ADDRESS ;
 scalar_t__ RELOAD_FOR_INPUT ;
 scalar_t__ RELOAD_FOR_INPUT_ADDRESS ;
 scalar_t__ RELOAD_FOR_OPERAND_ADDRESS ;
 scalar_t__ RELOAD_FOR_OTHER_ADDRESS ;
 scalar_t__ RELOAD_FOR_OUTPUT ;
 scalar_t__ RELOAD_FOR_OUTPUT_ADDRESS ;
 scalar_t__ RELOAD_OTHER ;
 int gcc_assert (int) ;
 int n_reloads ;
 scalar_t__ reg_overlap_mentioned_for_reload_p (scalar_t__,scalar_t__) ;
 int reg_overlap_mentioned_p (scalar_t__,scalar_t__) ;
 scalar_t__ reg_set_p (scalar_t__,int ) ;
 int* reload_spill_index ;
 TYPE_1__* rld ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 int transfer_replacements (int,int) ;

__attribute__((used)) static void
merge_assigned_reloads (rtx insn)
{
  int i, j;





  for (i = 0; i < n_reloads; i++)
    {
      int conflicting_input = 0;
      int max_input_address_opnum = -1;
      int min_conflicting_input_opnum = MAX_RECOG_OPERANDS;

      if (rld[i].in == 0 || rld[i].when_needed == RELOAD_OTHER
   || rld[i].out != 0 || rld[i].reg_rtx == 0
   || reg_set_p (rld[i].reg_rtx, insn))
 continue;







      for (j = 0; j < n_reloads; j++)
 {
   if (i == j || rld[j].reg_rtx == 0
       || ! reg_overlap_mentioned_p (rld[j].reg_rtx,
         rld[i].reg_rtx))
     continue;

   if (rld[j].when_needed == RELOAD_FOR_INPUT_ADDRESS
       && rld[j].opnum > max_input_address_opnum)
     max_input_address_opnum = rld[j].opnum;






   if (! rtx_equal_p (rld[i].reg_rtx, rld[j].reg_rtx)
       || rld[j].out != 0 || rld[j].in == 0
       || ! rtx_equal_p (rld[i].in, rld[j].in))
     {
       if (rld[j].when_needed != RELOAD_FOR_INPUT
    || ((rld[i].when_needed != RELOAD_FOR_INPUT_ADDRESS
         || rld[i].opnum > rld[j].opnum)
        && rld[i].when_needed != RELOAD_FOR_OTHER_ADDRESS))
  break;
       conflicting_input = 1;
       if (min_conflicting_input_opnum > rld[j].opnum)
  min_conflicting_input_opnum = rld[j].opnum;
     }
 }




      if (j == n_reloads
   && max_input_address_opnum <= min_conflicting_input_opnum)
 {
   gcc_assert (rld[i].when_needed != RELOAD_FOR_OUTPUT);

   for (j = 0; j < n_reloads; j++)
     if (i != j && rld[j].reg_rtx != 0
  && rtx_equal_p (rld[i].reg_rtx, rld[j].reg_rtx)
  && (! conflicting_input
      || rld[j].when_needed == RELOAD_FOR_INPUT_ADDRESS
      || rld[j].when_needed == RELOAD_FOR_OTHER_ADDRESS))
       {
  rld[i].when_needed = RELOAD_OTHER;
  rld[j].in = 0;
  reload_spill_index[j] = -1;
  transfer_replacements (i, j);
       }
   if (rld[i].when_needed == RELOAD_OTHER)
     for (j = 0; j < n_reloads; j++)
       if (rld[j].in != 0
    && rld[j].when_needed != RELOAD_OTHER
    && rld[j].when_needed != RELOAD_FOR_OTHER_ADDRESS
    && rld[j].when_needed != RELOAD_FOR_OUTPUT_ADDRESS
    && rld[j].when_needed != RELOAD_FOR_OPERAND_ADDRESS
    && (! conflicting_input
        || rld[j].when_needed == RELOAD_FOR_INPUT_ADDRESS
        || rld[j].when_needed == RELOAD_FOR_INPADDR_ADDRESS)
    && reg_overlap_mentioned_for_reload_p (rld[j].in,
        rld[i].in))
  {
    int k;

    rld[j].when_needed
      = ((rld[j].when_needed == RELOAD_FOR_INPUT_ADDRESS
   || rld[j].when_needed == RELOAD_FOR_INPADDR_ADDRESS)
         ? RELOAD_FOR_OTHER_ADDRESS : RELOAD_OTHER);





    if (rld[j].reg_rtx)
      for (k = 0; k < j; k++)
        gcc_assert (rld[k].in == 0 || rld[k].reg_rtx == 0
      || rld[k].when_needed != rld[j].when_needed
      || !rtx_equal_p (rld[k].reg_rtx,
         rld[j].reg_rtx)
      || rtx_equal_p (rld[k].in,
        rld[j].in));
  }
 }
    }
}
