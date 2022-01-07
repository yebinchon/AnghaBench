
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int last_set_mode; scalar_t__ last_set_table_tick; int last_set_invalid; scalar_t__ last_set_sign_bit_copies; scalar_t__ last_set_nonzero_bits; void* last_set_value; scalar_t__ last_set_label; scalar_t__ truncated_to_mode; scalar_t__ last_death; void* last_set; } ;


 scalar_t__ ARITHMETIC_P (void*) ;
 scalar_t__ CLOBBER ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (void*) ;
 size_t GET_MODE (void*) ;
 scalar_t__ GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ HOST_BITS_PER_WIDE_INT ;
 int INSN_CUID (void*) ;
 scalar_t__ MAX_LAST_VALUE_RTL ;
 scalar_t__ MODE_INT ;
 unsigned int REGNO (void*) ;
 void* XEXP (void*,int) ;
 int const0_rtx ;
 void* copy_rtx (void*) ;
 int count_occurrences (void*,void*,int) ;
 scalar_t__ count_rtxs (void*) ;
 void* gen_rtx_CLOBBER (size_t,int ) ;
 void* get_last_value (void*) ;
 int get_last_value_validate (void**,void*,scalar_t__,int) ;
 int** hard_regno_nregs ;
 scalar_t__ label_tick ;
 scalar_t__ nonzero_bits (void*,int) ;
 int nonzero_bits_mode ;
 scalar_t__ num_sign_bit_copies (void*,size_t) ;
 scalar_t__ reg_overlap_mentioned_p (void*,void*) ;
 TYPE_1__* reg_stat ;
 void* replace_rtx (void*,void*,void*) ;
 int subst_low_cuid ;
 int update_table_tick (void*) ;

__attribute__((used)) static void
record_value_for_reg (rtx reg, rtx insn, rtx value)
{
  unsigned int regno = REGNO (reg);
  unsigned int endregno
    = regno + (regno < FIRST_PSEUDO_REGISTER
        ? hard_regno_nregs[regno][GET_MODE (reg)] : 1);
  unsigned int i;



  if (value && insn && reg_overlap_mentioned_p (reg, value))
    {
      rtx tem;



      subst_low_cuid = INSN_CUID (insn);
      tem = get_last_value (reg);





      if (tem)
 {
   if (ARITHMETIC_P (tem)
       && GET_CODE (XEXP (tem, 0)) == CLOBBER
       && GET_CODE (XEXP (tem, 1)) == CLOBBER)
     tem = XEXP (tem, 0);
   else if (count_occurrences (value, reg, 1) >= 2)
     {


       if (count_rtxs (tem) > MAX_LAST_VALUE_RTL)
  tem = gen_rtx_CLOBBER (GET_MODE (tem), const0_rtx);
     }

   value = replace_rtx (copy_rtx (value), reg, tem);
 }
    }





  for (i = regno; i < endregno; i++)
    {
      if (insn)
 reg_stat[i].last_set = insn;

      reg_stat[i].last_set_value = 0;
      reg_stat[i].last_set_mode = 0;
      reg_stat[i].last_set_nonzero_bits = 0;
      reg_stat[i].last_set_sign_bit_copies = 0;
      reg_stat[i].last_death = 0;
      reg_stat[i].truncated_to_mode = 0;
    }


  if (value)
    update_table_tick (value);
  for (i = regno; i < endregno; i++)
    {
      reg_stat[i].last_set_label = label_tick;
      if (!insn || (value && reg_stat[i].last_set_table_tick == label_tick))
 reg_stat[i].last_set_invalid = 1;
      else
 reg_stat[i].last_set_invalid = 0;
    }




  if (value && ! get_last_value_validate (&value, insn,
       reg_stat[regno].last_set_label, 0))
    {
      value = copy_rtx (value);
      if (! get_last_value_validate (&value, insn,
         reg_stat[regno].last_set_label, 1))
 value = 0;
    }




  reg_stat[regno].last_set_value = value;

  if (value)
    {
      enum machine_mode mode = GET_MODE (reg);
      subst_low_cuid = INSN_CUID (insn);
      reg_stat[regno].last_set_mode = mode;
      if (GET_MODE_CLASS (mode) == MODE_INT
   && GET_MODE_BITSIZE (mode) <= HOST_BITS_PER_WIDE_INT)
 mode = nonzero_bits_mode;
      reg_stat[regno].last_set_nonzero_bits = nonzero_bits (value, mode);
      reg_stat[regno].last_set_sign_bit_copies
 = num_sign_bit_copies (value, GET_MODE (reg));
    }
}
