
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table {scalar_t__ set_p; } ;
typedef scalar_t__ rtx ;


 scalar_t__ BB_END (int ) ;
 int BLOCK_FOR_INSN (scalar_t__) ;
 scalar_t__ CALL ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int JUMP_P (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 unsigned int REGNO (scalar_t__) ;
 int REG_EH_REGION ;
 int REG_EQUIV ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ can_copy_p (int ) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 scalar_t__ find_reg_note (scalar_t__,int ,scalar_t__) ;
 scalar_t__ flag_gcse_las ;
 scalar_t__ gcse_constant_p (scalar_t__) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 int hash_scan_call (scalar_t__,scalar_t__,struct hash_table*) ;
 int insert_expr_in_table (scalar_t__,int ,scalar_t__,int,int,struct hash_table*) ;
 int insert_set_in_table (scalar_t__,scalar_t__,struct hash_table*) ;
 scalar_t__ next_nonnote_insn (scalar_t__) ;
 scalar_t__ oprs_anticipatable_p (scalar_t__,scalar_t__) ;
 scalar_t__ oprs_available_p (scalar_t__,scalar_t__) ;
 int set_noop_p (scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;
 scalar_t__ want_to_gcse_p (scalar_t__) ;

__attribute__((used)) static void
hash_scan_set (rtx pat, rtx insn, struct hash_table *table)
{
  rtx src = SET_SRC (pat);
  rtx dest = SET_DEST (pat);
  rtx note;

  if (GET_CODE (src) == CALL)
    hash_scan_call (src, insn, table);

  else if (REG_P (dest))
    {
      unsigned int regno = REGNO (dest);
      rtx tmp;





      note = find_reg_equal_equiv_note (insn);
      if (note != 0
   && (table->set_p
       ? gcse_constant_p (XEXP (note, 0))
       : want_to_gcse_p (XEXP (note, 0))))
 src = XEXP (note, 0), pat = gen_rtx_SET (VOIDmode, dest, src);


      if (! table->set_p
   && regno >= FIRST_PSEUDO_REGISTER

   && can_copy_p (GET_MODE (dest))



   && !find_reg_note (insn, REG_EH_REGION, NULL_RTX)

   && want_to_gcse_p (src)

   && ! set_noop_p (pat)





   && (note == NULL_RTX || ! MEM_P (XEXP (note, 0))))
 {



   int antic_p = oprs_anticipatable_p (src, insn) && single_set (insn);




   int avail_p = (oprs_available_p (src, insn)
    && ! JUMP_P (insn));

   insert_expr_in_table (src, GET_MODE (dest), insn, antic_p, avail_p, table);
 }


      else if (table->set_p
        && regno >= FIRST_PSEUDO_REGISTER
        && ((REG_P (src)
      && REGNO (src) >= FIRST_PSEUDO_REGISTER
      && can_copy_p (GET_MODE (dest))
      && REGNO (src) != regno)
     || gcse_constant_p (src))



        && (insn == BB_END (BLOCK_FOR_INSN (insn))
     || ((tmp = next_nonnote_insn (insn)) != NULL_RTX
         && oprs_available_p (pat, tmp))))
 insert_set_in_table (pat, insn, table);
    }



  else if (flag_gcse_las && REG_P (src) && MEM_P (dest))
      {
        unsigned int regno = REGNO (src);


        if (! table->set_p

     && regno >= FIRST_PSEUDO_REGISTER

    && can_copy_p (GET_MODE (src))



    && ! find_reg_note (insn, REG_EH_REGION, NULL_RTX)

    && want_to_gcse_p (dest)

    && ! set_noop_p (pat)





    && ((note = find_reg_note (insn, REG_EQUIV, NULL_RTX)) == 0
        || ! MEM_P (XEXP (note, 0))))
             {

               int antic_p = 0;




               int avail_p = oprs_available_p (dest, insn)
        && ! JUMP_P (insn);


        insert_expr_in_table (dest, GET_MODE (dest), insn,
         antic_p, avail_p, table);
             }
      }
}
