
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {int can_eliminate; int initial_offset; int offset; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;




 int BARRIER_P (int ) ;


 size_t CODE_LABEL_NUMBER (int ) ;
 int const GET_CODE (int ) ;




 int LABEL_REF_NONLOCAL_P (int ) ;
 unsigned int NUM_ELIMINABLE_REGS ;

 int PATTERN (int ) ;

 int REG_LABEL ;
 int REG_NOTES (int ) ;
 int REG_NOTE_KIND (int ) ;


 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,unsigned int) ;
 int XVECLEN (int ,int) ;
 size_t first_label_num ;
 int ** offsets_at ;
 int* offsets_known_at ;
 int pc_rtx ;
 int prev_nonnote_insn (int ) ;
 struct elim_table* reg_eliminate ;
 int set_offsets_for_label (int ) ;

__attribute__((used)) static void
set_label_offsets (rtx x, rtx insn, int initial_p)
{
  enum rtx_code code = GET_CODE (x);
  rtx tem;
  unsigned int i;
  struct elim_table *p;

  switch (code)
    {
    case 132:
      if (LABEL_REF_NONLOCAL_P (x))
 return;

      x = XEXP (x, 0);



    case 136:







      if (! offsets_known_at[CODE_LABEL_NUMBER (x) - first_label_num])
 {
   for (i = 0; i < NUM_ELIMINABLE_REGS; i++)
     offsets_at[CODE_LABEL_NUMBER (x) - first_label_num][i]
       = (initial_p ? reg_eliminate[i].initial_offset
   : reg_eliminate[i].offset);
   offsets_known_at[CODE_LABEL_NUMBER (x) - first_label_num] = 1;
 }





      else if (x == insn
        && (tem = prev_nonnote_insn (insn)) != 0
        && BARRIER_P (tem))
 set_offsets_for_label (insn);
      else




 for (i = 0; i < NUM_ELIMINABLE_REGS; i++)
   if (offsets_at[CODE_LABEL_NUMBER (x) - first_label_num][i]
       != (initial_p ? reg_eliminate[i].initial_offset
    : reg_eliminate[i].offset))
     reg_eliminate[i].can_eliminate = 0;

      return;

    case 133:
      set_label_offsets (PATTERN (insn), insn, initial_p);



    case 134:
    case 137:


      for (tem = REG_NOTES (x); tem; tem = XEXP (tem, 1))
 if (REG_NOTE_KIND (tem) == REG_LABEL)
   set_label_offsets (XEXP (tem, 0), insn, 1);
      return;

    case 131:
    case 138:
    case 139:




      for (i = 0; i < (unsigned) XVECLEN (x, code == 139); i++)
 set_label_offsets (XVECEXP (x, code == 139, i),
      insn, initial_p);
      return;

    case 128:
      if (SET_DEST (x) != pc_rtx)
 return;

      switch (GET_CODE (SET_SRC (x)))
 {
 case 130:
 case 129:
   return;

 case 132:
   set_label_offsets (SET_SRC (x), insn, initial_p);
   return;

 case 135:
   tem = XEXP (SET_SRC (x), 1);
   if (GET_CODE (tem) == 132)
     set_label_offsets (XEXP (tem, 0), insn, initial_p);
   else if (GET_CODE (tem) != 130 && GET_CODE (tem) != 129)
     break;

   tem = XEXP (SET_SRC (x), 2);
   if (GET_CODE (tem) == 132)
     set_label_offsets (XEXP (tem, 0), insn, initial_p);
   else if (GET_CODE (tem) != 130 && GET_CODE (tem) != 129)
     break;
   return;

 default:
   break;
 }



      for (p = reg_eliminate; p < &reg_eliminate[NUM_ELIMINABLE_REGS]; p++)
 if (p->offset != p->initial_offset)
   p->can_eliminate = 0;
      break;

    default:
      break;
    }
}
