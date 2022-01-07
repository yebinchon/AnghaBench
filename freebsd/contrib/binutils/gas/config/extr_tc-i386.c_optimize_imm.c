
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int* operand_types; } ;
typedef TYPE_3__ template ;
typedef int offsetT ;
struct TYPE_10__ {TYPE_3__ const* end; TYPE_3__* start; } ;
struct TYPE_9__ {char suffix; int operands; int* types; scalar_t__* prefix; TYPE_2__* op; scalar_t__ reg_operands; } ;
struct TYPE_7__ {TYPE_1__* imms; } ;
struct TYPE_6__ {int X_op; int X_add_number; } ;



 scalar_t__ CODE_16BIT ;
 size_t DATA_PREFIX ;
 int Imm ;
 unsigned int Imm16 ;
 unsigned int Imm32 ;
 unsigned int Imm32S ;
 unsigned int Imm64 ;
 unsigned int Imm8 ;
 unsigned int Imm8S ;





 int Reg ;
 int Reg16 ;
 int Reg32 ;
 int Reg64 ;
 int Reg8 ;

 int abort () ;
 TYPE_5__* current_templates ;
 scalar_t__ flag_code ;
 TYPE_4__ i ;
 unsigned int smallest_imm_type (int) ;

__attribute__((used)) static void
optimize_imm (void)
{
  char guess_suffix = 0;
  int op;

  if (i.suffix)
    guess_suffix = i.suffix;
  else if (i.reg_operands)
    {




      for (op = i.operands; --op >= 0;)
 if (i.types[op] & Reg)
   {
     if (i.types[op] & Reg8)
       guess_suffix = 134;
     else if (i.types[op] & Reg16)
       guess_suffix = 128;
     else if (i.types[op] & Reg32)
       guess_suffix = 133;
     else if (i.types[op] & Reg64)
       guess_suffix = 129;
     break;
   }
    }
  else if ((flag_code == CODE_16BIT) ^ (i.prefix[DATA_PREFIX] != 0))
    guess_suffix = 128;

  for (op = i.operands; --op >= 0;)
    if (i.types[op] & Imm)
      {
 switch (i.op[op].imms->X_op)
   {
   case 131:

     switch (guess_suffix)
       {
       case 133:
  i.types[op] |= Imm32 | Imm64;
  break;
       case 128:
  i.types[op] |= Imm16 | Imm32S | Imm32 | Imm64;
  break;
       case 134:
  i.types[op] |= Imm16 | Imm8 | Imm8S | Imm32S | Imm32 | Imm64;
  break;
       }






     if ((i.types[op] & Imm16)
  && (i.op[op].imms->X_add_number & ~(offsetT) 0xffff) == 0)
       {
  i.op[op].imms->X_add_number =
    (((i.op[op].imms->X_add_number & 0xffff) ^ 0x8000) - 0x8000);
       }
     if ((i.types[op] & Imm32)
  && ((i.op[op].imms->X_add_number & ~(((offsetT) 2 << 31) - 1))
      == 0))
       {
  i.op[op].imms->X_add_number = ((i.op[op].imms->X_add_number
      ^ ((offsetT) 1 << 31))
            - ((offsetT) 1 << 31));
       }
     i.types[op] |= smallest_imm_type (i.op[op].imms->X_add_number);



     if (guess_suffix == 129)
       i.types[op] &= ~Imm32;
     break;

   case 132:
   case 130:
     abort ();


   default:



     {
       unsigned int mask, allowed = 0;
       const template *t;

       for (t = current_templates->start;
     t < current_templates->end;
     ++t)
  allowed |= t->operand_types[op];
       switch (guess_suffix)
  {
  case 129:
    mask = Imm64 | Imm32S;
    break;
  case 133:
    mask = Imm32;
    break;
  case 128:
    mask = Imm16;
    break;
  case 134:
    mask = Imm8;
    break;
  default:
    mask = 0;
    break;
  }
       if (mask & allowed)
  i.types[op] &= mask;
     }
     break;
   }
      }
}
