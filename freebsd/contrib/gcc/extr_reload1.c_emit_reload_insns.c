
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct insn_chain {void* insn; } ;
typedef void* rtx ;
struct TYPE_4__ {void* reg_rtx; scalar_t__ in_reg; scalar_t__ out; void* out_reg; scalar_t__ in; size_t mode; int when_needed; int opnum; } ;


 int CLEAR_HARD_REG_BIT (int ,int) ;
 int CLEAR_HARD_REG_SET (int ) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (void*) ;
 size_t GET_MODE (void*) ;
 scalar_t__ HARD_REGNO_CALL_PART_CLOBBERED (int,size_t) ;
 int INSN_UID (void*) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 scalar_t__ MEM_P (void*) ;
 void* NULL_RTX ;
 int PATTERN (void*) ;
 int REGNO (void*) ;
 int REGNO_REG_SET_P (int *,int) ;
 int REG_DEAD ;
 scalar_t__ REG_P (void*) ;
 scalar_t__ SET_DEST (void*) ;
 int SET_HARD_REG_BIT (int ,int) ;
 int SET_REGNO_REG_SET (int *,int) ;
 void* SET_SRC (void*) ;
 scalar_t__ SUBREG ;
 void* SUBREG_REG (void*) ;
 void* XEXP (scalar_t__,int ) ;
 int debug_reload_to_stream (scalar_t__) ;
 int do_input_reload (struct insn_chain*,TYPE_1__*,int) ;
 int do_output_reload (struct insn_chain*,TYPE_1__*,int) ;
 scalar_t__ dump_file ;
 void* emit_insn_after (scalar_t__,void*) ;
 int emit_insn_before (scalar_t__,void*) ;
 void* find_regno_note (void*,int ,int) ;
 int fprintf (scalar_t__,char*,int) ;
 int** hard_regno_nregs ;
 scalar_t__ inherit_piecemeal_p (int,int) ;
 scalar_t__* inpaddr_address_reload_insns ;
 scalar_t__* input_address_reload_insns ;
 scalar_t__* input_reload_insns ;
 int n_reloads ;
 void** new_spill_reg_store ;
 scalar_t__ operand_reload_insns ;
 scalar_t__ other_input_address_reload_insns ;
 scalar_t__ other_input_reload_insns ;
 scalar_t__ other_operand_reload_insns ;
 scalar_t__* other_output_reload_insns ;
 scalar_t__* outaddr_address_reload_insns ;
 scalar_t__* output_address_reload_insns ;
 scalar_t__* output_reload_insns ;
 int reg_has_output_reload ;
 int reg_is_output_reload ;
 void** reg_last_reload_reg ;
 int reg_reloaded_call_part_clobbered ;
 int* reg_reloaded_contents ;
 int reg_reloaded_dead ;
 int reg_reloaded_died ;
 void** reg_reloaded_insn ;
 int reg_reloaded_valid ;
 int reg_set_p (void*,int ) ;
 void** regno_reg_rtx ;
 scalar_t__* reload_inherited ;
 int reload_n_operands ;
 int* reload_order ;
 scalar_t__* reload_override_in ;
 scalar_t__ reload_reg_reaches_end_p (int,int ,int ) ;
 int* reload_spill_index ;
 TYPE_1__* rld ;
 void* single_set (void*) ;
 void** spill_reg_store ;
 void** spill_reg_stored_to ;

__attribute__((used)) static void
emit_reload_insns (struct insn_chain *chain)
{
  rtx insn = chain->insn;

  int j;

  CLEAR_HARD_REG_SET (reg_reloaded_died);

  for (j = 0; j < reload_n_operands; j++)
    input_reload_insns[j] = input_address_reload_insns[j]
      = inpaddr_address_reload_insns[j]
      = output_reload_insns[j] = output_address_reload_insns[j]
      = outaddr_address_reload_insns[j]
      = other_output_reload_insns[j] = 0;
  other_input_address_reload_insns = 0;
  other_input_reload_insns = 0;
  operand_reload_insns = 0;
  other_operand_reload_insns = 0;


  if (dump_file)
    {
      fprintf (dump_file, "\nReloads for insn # %d\n", INSN_UID (insn));
      debug_reload_to_stream (dump_file);
    }






  for (j = 0; j < n_reloads; j++)
    {
      if (rld[j].reg_rtx
   && REGNO (rld[j].reg_rtx) < FIRST_PSEUDO_REGISTER)
 new_spill_reg_store[REGNO (rld[j].reg_rtx)] = 0;

      do_input_reload (chain, rld + j, j);
      do_output_reload (chain, rld + j, j);
    }
  emit_insn_before (other_input_address_reload_insns, insn);
  emit_insn_before (other_input_reload_insns, insn);

  for (j = 0; j < reload_n_operands; j++)
    {
      emit_insn_before (inpaddr_address_reload_insns[j], insn);
      emit_insn_before (input_address_reload_insns[j], insn);
      emit_insn_before (input_reload_insns[j], insn);
    }

  emit_insn_before (other_operand_reload_insns, insn);
  emit_insn_before (operand_reload_insns, insn);

  for (j = 0; j < reload_n_operands; j++)
    {
      rtx x = emit_insn_after (outaddr_address_reload_insns[j], insn);
      x = emit_insn_after (output_address_reload_insns[j], x);
      x = emit_insn_after (output_reload_insns[j], x);
      emit_insn_after (other_output_reload_insns[j], x);
    }
  for (j = 0; j < n_reloads; j++)
    {
      int r = reload_order[j];
      int i = reload_spill_index[r];





      if (rld[r].in_reg != 0
   && ! (reload_inherited[r] || reload_override_in[r]))
 {
   rtx reg = rld[r].in_reg;

   if (GET_CODE (reg) == SUBREG)
     reg = SUBREG_REG (reg);

   if (REG_P (reg)
       && REGNO (reg) >= FIRST_PSEUDO_REGISTER
       && !REGNO_REG_SET_P (&reg_has_output_reload, REGNO (reg)))
     {
       int nregno = REGNO (reg);

       if (reg_last_reload_reg[nregno])
  {
    int last_regno = REGNO (reg_last_reload_reg[nregno]);

    if (reg_reloaded_contents[last_regno] == nregno)
      spill_reg_store[last_regno] = 0;
  }
     }
 }





      if (i >= 0 && rld[r].reg_rtx != 0)
 {
   int nr = hard_regno_nregs[i][GET_MODE (rld[r].reg_rtx)];
   int k;
   int part_reaches_end = 0;
   int all_reaches_end = 1;



   for (k = 0; k < nr; k++)
     {
       if (reload_reg_reaches_end_p (i + k, rld[r].opnum,
         rld[r].when_needed))
  part_reaches_end = 1;
       else
  all_reaches_end = 0;
     }



   if (all_reaches_end)
     {



       for (k = 0; k < nr; k++)
           {
  CLEAR_HARD_REG_BIT (reg_reloaded_valid, i + k);
      CLEAR_HARD_REG_BIT (reg_reloaded_call_part_clobbered, i + k);
    }


       if (rld[r].out != 0
    && (REG_P (rld[r].out)



        || REG_P (rld[r].out_reg)))
  {
    rtx out = (REG_P (rld[r].out)
        ? rld[r].out
        : rld[r].out_reg
        ? rld[r].out_reg
                     : XEXP (rld[r].in_reg, 0));
    int nregno = REGNO (out);
    int nnr = (nregno >= FIRST_PSEUDO_REGISTER ? 1
        : hard_regno_nregs[nregno]
            [GET_MODE (rld[r].reg_rtx)]);
    bool piecemeal;

    spill_reg_store[i] = new_spill_reg_store[i];
    spill_reg_stored_to[i] = out;
    reg_last_reload_reg[nregno] = rld[r].reg_rtx;

    piecemeal = (nregno < FIRST_PSEUDO_REGISTER
          && nr == nnr
          && inherit_piecemeal_p (r, nregno));







    if (nregno < FIRST_PSEUDO_REGISTER)
      for (k = 1; k < nnr; k++)
        reg_last_reload_reg[nregno + k]
   = (piecemeal
      ? regno_reg_rtx[REGNO (rld[r].reg_rtx) + k]
      : 0);


    for (k = 0; k < nr; k++)
      {
        CLEAR_HARD_REG_BIT (reg_reloaded_dead, i + k);
        reg_reloaded_contents[i + k]
   = (nregno >= FIRST_PSEUDO_REGISTER || !piecemeal
      ? nregno
      : nregno + k);
        reg_reloaded_insn[i + k] = insn;
        SET_HARD_REG_BIT (reg_reloaded_valid, i + k);
        if (HARD_REGNO_CALL_PART_CLOBBERED (i + k, GET_MODE (out)))
   SET_HARD_REG_BIT (reg_reloaded_call_part_clobbered, i + k);
      }
  }




       else if (rld[r].out_reg == 0
         && rld[r].in != 0
         && ((REG_P (rld[r].in)
       && REGNO (rld[r].in) >= FIRST_PSEUDO_REGISTER
                     && !REGNO_REG_SET_P (&reg_has_output_reload,
             REGNO (rld[r].in)))
      || (REG_P (rld[r].in_reg)
          && !REGNO_REG_SET_P (&reg_has_output_reload,
          REGNO (rld[r].in_reg))))
         && ! reg_set_p (rld[r].reg_rtx, PATTERN (insn)))
  {
    int nregno;
    int nnr;
    rtx in;
    bool piecemeal;

    if (REG_P (rld[r].in)
        && REGNO (rld[r].in) >= FIRST_PSEUDO_REGISTER)
      in = rld[r].in;
    else if (REG_P (rld[r].in_reg))
      in = rld[r].in_reg;
    else
      in = XEXP (rld[r].in_reg, 0);
    nregno = REGNO (in);

    nnr = (nregno >= FIRST_PSEUDO_REGISTER ? 1
    : hard_regno_nregs[nregno]
        [GET_MODE (rld[r].reg_rtx)]);

    reg_last_reload_reg[nregno] = rld[r].reg_rtx;

    piecemeal = (nregno < FIRST_PSEUDO_REGISTER
          && nr == nnr
          && inherit_piecemeal_p (r, nregno));

    if (nregno < FIRST_PSEUDO_REGISTER)
      for (k = 1; k < nnr; k++)
        reg_last_reload_reg[nregno + k]
   = (piecemeal
      ? regno_reg_rtx[REGNO (rld[r].reg_rtx) + k]
      : 0);





    if (! reload_inherited[r]
        || (rld[r].out && ! rld[r].out_reg))
      spill_reg_store[i] = 0;

    for (k = 0; k < nr; k++)
      {
        CLEAR_HARD_REG_BIT (reg_reloaded_dead, i + k);
        reg_reloaded_contents[i + k]
   = (nregno >= FIRST_PSEUDO_REGISTER || !piecemeal
      ? nregno
      : nregno + k);
        reg_reloaded_insn[i + k] = insn;
        SET_HARD_REG_BIT (reg_reloaded_valid, i + k);
        if (HARD_REGNO_CALL_PART_CLOBBERED (i + k, GET_MODE (in)))
   SET_HARD_REG_BIT (reg_reloaded_call_part_clobbered, i + k);
      }
  }
     }



   else if (part_reaches_end)
     {
       for (k = 0; k < nr; k++)
  if (reload_reg_reaches_end_p (i + k,
           rld[r].opnum,
           rld[r].when_needed))
    CLEAR_HARD_REG_BIT (reg_reloaded_valid, i + k);
     }
 }
      if (i < 0
   && ((rld[r].out != 0
        && (REG_P (rld[r].out)
     || (MEM_P (rld[r].out)
         && REG_P (rld[r].out_reg))))
       || (rld[r].out == 0 && rld[r].out_reg
    && REG_P (rld[r].out_reg))))
 {
   rtx out = ((rld[r].out && REG_P (rld[r].out))
       ? rld[r].out : rld[r].out_reg);
   int nregno = REGNO (out);
   if (nregno >= FIRST_PSEUDO_REGISTER)
     {
       rtx src_reg, store_insn = NULL_RTX;

       reg_last_reload_reg[nregno] = 0;




       src_reg = rld[r].reg_rtx;



       if (! src_reg)
  {
    rtx set = single_set (insn);
    if (set && SET_DEST (set) == rld[r].out)
      {
        int k;

        src_reg = SET_SRC (set);
        store_insn = insn;
        for (k = 0; k < n_reloads; k++)
   {
     if (rld[k].in == src_reg)
       {
         src_reg = rld[k].reg_rtx;
         break;
       }
   }
      }
  }
       else
  store_insn = new_spill_reg_store[REGNO (src_reg)];
       if (src_reg && REG_P (src_reg)
    && REGNO (src_reg) < FIRST_PSEUDO_REGISTER)
  {
    int src_regno = REGNO (src_reg);
    int nr = hard_regno_nregs[src_regno][rld[r].mode];




    rtx note = find_regno_note (insn, REG_DEAD, src_regno);
    if (! note && store_insn)
      note = find_regno_note (store_insn, REG_DEAD, src_regno);
    while (nr-- > 0)
      {
        spill_reg_store[src_regno + nr] = store_insn;
        spill_reg_stored_to[src_regno + nr] = out;
        reg_reloaded_contents[src_regno + nr] = nregno;
        reg_reloaded_insn[src_regno + nr] = store_insn;
        CLEAR_HARD_REG_BIT (reg_reloaded_dead, src_regno + nr);
        SET_HARD_REG_BIT (reg_reloaded_valid, src_regno + nr);
        if (HARD_REGNO_CALL_PART_CLOBBERED (src_regno + nr,
         GET_MODE (src_reg)))
   SET_HARD_REG_BIT (reg_reloaded_call_part_clobbered,
       src_regno + nr);
        SET_HARD_REG_BIT (reg_is_output_reload, src_regno + nr);
        if (note)
   SET_HARD_REG_BIT (reg_reloaded_died, src_regno);
        else
   CLEAR_HARD_REG_BIT (reg_reloaded_died, src_regno);
      }
    reg_last_reload_reg[nregno] = src_reg;



    SET_REGNO_REG_SET (&reg_has_output_reload,
         nregno);
  }
     }
   else
     {
       int num_regs = hard_regno_nregs[nregno][GET_MODE (out)];

       while (num_regs-- > 0)
  reg_last_reload_reg[nregno + num_regs] = 0;
     }
 }
    }
  IOR_HARD_REG_SET (reg_reloaded_dead, reg_reloaded_died);
}
