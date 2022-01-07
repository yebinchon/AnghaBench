
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int X_op; int X_add_number; int * X_op_symbol; int * X_add_symbol; } ;
struct TYPE_6__ {TYPE_5__ exp; void* rtype; TYPE_2__* arg; } ;
typedef TYPE_1__ ins ;
struct TYPE_7__ {int X_op; int size; int type; int constant; } ;
typedef TYPE_2__ argument ;
struct TYPE_8__ {int size; } ;


 int ARITH_BYTE_INS ;
 int ARITH_INS ;
 void* BFD_RELOC_CR16_ABS20 ;
 void* BFD_RELOC_CR16_ABS24 ;
 void* BFD_RELOC_CR16_DISP16 ;
 void* BFD_RELOC_CR16_DISP24 ;
 void* BFD_RELOC_CR16_DISP4 ;
 void* BFD_RELOC_CR16_DISP8 ;
 void* BFD_RELOC_CR16_IMM16 ;
 void* BFD_RELOC_CR16_IMM20 ;
 void* BFD_RELOC_CR16_IMM32 ;
 void* BFD_RELOC_CR16_IMM32a ;
 void* BFD_RELOC_CR16_IMM4 ;
 void* BFD_RELOC_CR16_REGREL0 ;
 void* BFD_RELOC_CR16_REGREL14 ;
 void* BFD_RELOC_CR16_REGREL16 ;
 void* BFD_RELOC_CR16_REGREL20 ;
 void* BFD_RELOC_CR16_REGREL20a ;
 void* BFD_RELOC_CR16_REGREL4 ;
 void* BFD_RELOC_CR16_REGREL4a ;
 void* BFD_RELOC_NONE ;
 int BRANCH_INS ;
 int BRANCH_NEQ_INS ;
 int CSTBIT_INS ;
 int IS_INSN_MNEMONIC (char*) ;
 int IS_INSN_TYPE (int ) ;
 int LD_STOR_INS ;






 int STOR_IMM_INS ;
 int _ (char*) ;






 int as_bad (int ,...) ;
 int cur_arg_num ;
 int expression (TYPE_5__*) ;
 char* input_line_pointer ;
 TYPE_4__* instruction ;
 int relocatable ;
 int strneq (char*,char*,int) ;

__attribute__((used)) static void
process_label_constant (char *str, ins * cr16_ins)
{
  char *saved_input_line_pointer;
  int symbol_with_at = 0;
  int symbol_with_s = 0;
  int symbol_with_m = 0;
  int symbol_with_l = 0;
  argument *cur_arg = cr16_ins->arg + cur_arg_num;

  saved_input_line_pointer = input_line_pointer;
  input_line_pointer = str;

  expression (&cr16_ins->exp);

  switch (cr16_ins->exp.X_op)
    {
    case 137:
    case 139:

      as_bad (_("missing or invalid displacement expression `%s' taken as 0"),
       str);
      cr16_ins->exp.X_op = 136;
      cr16_ins->exp.X_add_number = 0;
      cr16_ins->exp.X_add_symbol = ((void*)0);
      cr16_ins->exp.X_op_symbol = ((void*)0);


    case 136:
      cur_arg->X_op = 136;
      cur_arg->constant = cr16_ins->exp.X_add_number;
      break;

    case 134:
    case 135:
    case 138:
      cur_arg->X_op = 134;
      cr16_ins->rtype = BFD_RELOC_NONE;
      relocatable = 1;

      if (strneq (input_line_pointer, "@c", 2))
 symbol_with_at = 1;

      if (strneq (input_line_pointer, "@l", 2)
   || strneq (input_line_pointer, ":l", 2))
 symbol_with_l = 1;

      if (strneq (input_line_pointer, "@m", 2)
   || strneq (input_line_pointer, ":m", 2))
 symbol_with_m = 1;

      if (strneq (input_line_pointer, "@s", 2)
   || strneq (input_line_pointer, ":s", 2))
 symbol_with_s = 1;

      switch (cur_arg->type)
        {
 case 132:
   if (IS_INSN_TYPE (LD_STOR_INS) || IS_INSN_TYPE (CSTBIT_INS))
     {
       if (cur_arg->size == 20)
  cr16_ins->rtype = BFD_RELOC_CR16_REGREL20;
       else
  cr16_ins->rtype = BFD_RELOC_CR16_REGREL20a;
     }
   break;

 case 131:
   if (IS_INSN_TYPE (LD_STOR_INS) || IS_INSN_TYPE (CSTBIT_INS))
     switch (instruction->size)
       {
       case 1:
  switch (cur_arg->size)
    {
    case 0:
      cr16_ins->rtype = BFD_RELOC_CR16_REGREL0;
      break;
    case 4:
      if (IS_INSN_MNEMONIC ("loadb") || IS_INSN_MNEMONIC ("storb"))
        cr16_ins->rtype = BFD_RELOC_CR16_REGREL4;
      else
        cr16_ins->rtype = BFD_RELOC_CR16_REGREL4a;
      break;
    default: break;
    }
  break;
       case 2:
  cr16_ins->rtype = BFD_RELOC_CR16_REGREL16;
  break;
       case 3:
  if (cur_arg->size == 20)
    cr16_ins->rtype = BFD_RELOC_CR16_REGREL20;
  else
    cr16_ins->rtype = BFD_RELOC_CR16_REGREL20a;
  break;
       default:
  break;
       }
   break;

 case 129:
   if (IS_INSN_TYPE (LD_STOR_INS) || IS_INSN_TYPE (CSTBIT_INS))
     cr16_ins->rtype = BFD_RELOC_CR16_REGREL20;
   break;

 case 128:
   if (IS_INSN_TYPE (LD_STOR_INS) || IS_INSN_TYPE (CSTBIT_INS))
     switch (instruction->size)
       {
       case 1: cr16_ins->rtype = BFD_RELOC_CR16_REGREL0; break;
       case 2: cr16_ins->rtype = BFD_RELOC_CR16_REGREL14; break;
       case 3: cr16_ins->rtype = BFD_RELOC_CR16_REGREL20; break;
       default: break;
       }
   break;

 case 133:
   if (IS_INSN_MNEMONIC ("bal"))
     cr16_ins->rtype = BFD_RELOC_CR16_DISP24;
   else if (IS_INSN_TYPE (BRANCH_INS))
     {
       if (symbol_with_s)
  cr16_ins->rtype = BFD_RELOC_CR16_DISP8;
       else if (symbol_with_m)
  cr16_ins->rtype = BFD_RELOC_CR16_DISP16;
       else
  cr16_ins->rtype = BFD_RELOC_CR16_DISP24;
     }
   else if (IS_INSN_TYPE (STOR_IMM_INS) || IS_INSN_TYPE (LD_STOR_INS)
     || IS_INSN_TYPE (CSTBIT_INS))
     {
       if (symbol_with_s)
  as_bad (_("operand %d: illegal use expression: `%s`"), cur_arg_num + 1, str);
       if (symbol_with_m)
  cr16_ins->rtype = BFD_RELOC_CR16_ABS20;
       else
  cr16_ins->rtype = BFD_RELOC_CR16_ABS24;
     }
   else if (IS_INSN_TYPE (BRANCH_NEQ_INS))
     cr16_ins->rtype = BFD_RELOC_CR16_DISP4;
          break;

        case 130:
          if (IS_INSN_TYPE (ARITH_INS))
            {
              if (symbol_with_s)
                cr16_ins->rtype = BFD_RELOC_CR16_IMM4;
              else if (symbol_with_m)
                cr16_ins->rtype = BFD_RELOC_CR16_IMM20;
              else if (symbol_with_at)
                cr16_ins->rtype = BFD_RELOC_CR16_IMM32a;
              else
                cr16_ins->rtype = BFD_RELOC_CR16_IMM32;
            }
          else if (IS_INSN_TYPE (ARITH_BYTE_INS))
     {
       cr16_ins->rtype = BFD_RELOC_CR16_IMM16;
     }
          break;
        default:
          break;
 }
      break;

    default:
      cur_arg->X_op = cr16_ins->exp.X_op;
      break;
    }

  input_line_pointer = saved_input_line_pointer;
  return;
}
