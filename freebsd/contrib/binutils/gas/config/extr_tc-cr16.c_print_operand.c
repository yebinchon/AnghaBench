
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int cc; int rp; int r; int i_r; int prp; int pr; } ;
typedef TYPE_1__ argument ;
struct TYPE_6__ {int size; } ;


 int CR16_PRINT (int ,int,int) ;
 int CSTBIT_INS ;
 int IS_INSN_MNEMONIC (char*) ;
 int IS_INSN_TYPE (int ) ;
 int LD_STOR_INS ;
 int getidxregp_image (int ) ;
 int getprocreg_image (int ) ;
 int getprocregp_image (int ) ;
 int getreg_image (int ) ;
 int getregp_image (int ) ;
 TYPE_4__* instruction ;
 int print_constant (int,int,TYPE_1__*) ;

__attribute__((used)) static void
print_operand (int nbits, int shift, argument *arg)
{
  switch (arg->type)
    {
    case 138:
      CR16_PRINT (0, arg->cc, shift);
      break;

    case 130:
      CR16_PRINT (0, getreg_image (arg->r), shift);
      break;

    case 128:
      CR16_PRINT (0, getregp_image (arg->rp), shift);
      break;

    case 132:
      CR16_PRINT (0, getprocreg_image (arg->pr), shift);
      break;

    case 131:
      CR16_PRINT (0, getprocregp_image (arg->prp), shift);
      break;

    case 133:





      if (instruction->size == 3)
 {
   CR16_PRINT (0, getidxregp_image (arg->rp), 0);
   if (getreg_image (arg->i_r) == 12)
     CR16_PRINT (0, 0, 3);
   else
     CR16_PRINT (0, 1, 3);
 }
      else
 {
   CR16_PRINT (0, getidxregp_image (arg->rp), 16);
   if (getreg_image (arg->i_r) == 12)
     CR16_PRINT (0, 0, 19);
   else
     CR16_PRINT (0, 1, 19);
 }
      print_constant (nbits, shift, arg);
      break;

    case 134:
      if (getreg_image (arg->i_r) == 12)
 if (IS_INSN_MNEMONIC ("cbitb") || IS_INSN_MNEMONIC ("sbitb")
     || IS_INSN_MNEMONIC ("tbitb"))
   CR16_PRINT (0, 0, 23);
 else CR16_PRINT (0, 0, 24);
      else
 if (IS_INSN_MNEMONIC ("cbitb") || IS_INSN_MNEMONIC ("sbitb")
     || IS_INSN_MNEMONIC ("tbitb"))
   CR16_PRINT (0, 1, 23);
 else CR16_PRINT (0, 1, 24);

      print_constant (nbits, shift, arg);
      break;

    case 135:
    case 139:
      print_constant (nbits, shift, arg);
      break;

    case 129:
      CR16_PRINT (0, getreg_image (arg->r), shift);
      break;

    case 137:
      print_constant (nbits, shift , arg);

      CR16_PRINT (0, getreg_image (arg->r), (shift+16));
      break;

    case 136:
      print_constant (nbits, shift , arg);
      if (instruction->size > 1)
 CR16_PRINT (0, getregp_image (arg->rp), (shift + 16));
      else if (IS_INSN_TYPE (LD_STOR_INS) || (IS_INSN_TYPE (CSTBIT_INS)))
 {
   if (instruction->size == 2)
     CR16_PRINT (0, getregp_image (arg->rp), (shift - 8));
   else if (instruction->size == 1)
     CR16_PRINT (0, getregp_image (arg->rp), 16);
 }
      else
 CR16_PRINT (0, getregp_image (arg->rp), shift);
      break;

    default:
      break;
    }
}
