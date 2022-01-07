
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_6__ {int n_operands; int n_alternatives; TYPE_1__* operand; scalar_t__ n_dups; } ;
struct TYPE_5__ {int n_operands; int n_alternatives; char** constraints; int * operand_type; int * operand; int * operand_mode; scalar_t__ n_dups; int operand_loc; int * insn; } ;
struct TYPE_4__ {char* constraint; int mode; } ;







 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ MAX_RECOG_ALTERNATIVES ;
 int MAX_RECOG_OPERANDS ;
 int OP_IN ;
 int OP_INOUT ;
 int OP_OUT ;

 int PATTERN (int ) ;

 int SET_SRC (int ) ;

 int VOIDmode ;
 int XVECEXP (int ,int ,int ) ;
 int asm_noperands (int ) ;
 int decode_asm_operands (int ,int *,int ,char**,int *) ;
 int fatal_insn_not_found (int ) ;
 int gcc_assert (int) ;
 TYPE_3__* insn_data ;
 int insn_extract (int ) ;
 TYPE_2__ recog_data ;
 int recog_memoized (int ) ;
 int which_alternative ;

void
extract_insn (rtx insn)
{
  int i;
  int icode;
  int noperands;
  rtx body = PATTERN (insn);

  recog_data.insn = ((void*)0);
  recog_data.n_operands = 0;
  recog_data.n_alternatives = 0;
  recog_data.n_dups = 0;
  which_alternative = -1;

  switch (GET_CODE (body))
    {
    case 128:
    case 131:
    case 133:
    case 134:
    case 135:
      return;

    case 129:
      if (GET_CODE (SET_SRC (body)) == 132)
 goto asm_insn;
      else
 goto normal_insn;
    case 130:
      if ((GET_CODE (XVECEXP (body, 0, 0)) == 129
    && GET_CODE (SET_SRC (XVECEXP (body, 0, 0))) == 132)
   || GET_CODE (XVECEXP (body, 0, 0)) == 132)
 goto asm_insn;
      else
 goto normal_insn;
    case 132:
    asm_insn:
      recog_data.n_operands = noperands = asm_noperands (body);
      if (noperands >= 0)
 {



   gcc_assert (noperands <= MAX_RECOG_OPERANDS);


   decode_asm_operands (body, recog_data.operand,
          recog_data.operand_loc,
          recog_data.constraints,
          recog_data.operand_mode);
   if (noperands > 0)
     {
       const char *p = recog_data.constraints[0];
       recog_data.n_alternatives = 1;
       while (*p)
  recog_data.n_alternatives += (*p++ == ',');
     }
   break;
 }
      fatal_insn_not_found (insn);

    default:
    normal_insn:



      icode = recog_memoized (insn);
      if (icode < 0)
 fatal_insn_not_found (insn);

      recog_data.n_operands = noperands = insn_data[icode].n_operands;
      recog_data.n_alternatives = insn_data[icode].n_alternatives;
      recog_data.n_dups = insn_data[icode].n_dups;

      insn_extract (insn);

      for (i = 0; i < noperands; i++)
 {
   recog_data.constraints[i] = insn_data[icode].operand[i].constraint;
   recog_data.operand_mode[i] = insn_data[icode].operand[i].mode;

   if (recog_data.operand_mode[i] == VOIDmode)
     recog_data.operand_mode[i] = GET_MODE (recog_data.operand[i]);
 }
    }
  for (i = 0; i < noperands; i++)
    recog_data.operand_type[i]
      = (recog_data.constraints[i][0] == '=' ? OP_OUT
  : recog_data.constraints[i][0] == '+' ? OP_INOUT
  : OP_IN);

  gcc_assert (recog_data.n_alternatives <= MAX_RECOG_ALTERNATIVES);
}
