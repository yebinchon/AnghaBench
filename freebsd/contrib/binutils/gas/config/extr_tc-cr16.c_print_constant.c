
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long constant ;
struct TYPE_4__ {int type; int constant; } ;
typedef TYPE_1__ argument ;
struct TYPE_5__ {int size; } ;


 int CR16_PRINT (int,long,int) ;
 int IS_INSN_TYPE (int ) ;
 int LD_STOR_INS ;
 long WORD_SHIFT ;
 int arg_idxrp ;
 long getconstant (int ,int) ;
 TYPE_3__* instruction ;

__attribute__((used)) static void
print_constant (int nbits, int shift, argument *arg)
{
  unsigned long mask = 0;

  long constant = getconstant (arg->constant, nbits);

  switch (nbits)
    {
    case 32:
    case 28:




      mask = (1 << (nbits - 16)) - 1;







      CR16_PRINT (0, (constant >> WORD_SHIFT) & mask, 0);
      CR16_PRINT (1, (constant & 0xFFFF), WORD_SHIFT);
      break;

    case 21:
      if ((nbits == 21) && (IS_INSN_TYPE (LD_STOR_INS))) nbits = 20;
    case 24:
    case 22:
    case 20:




      mask = (1 << (nbits - 16)) - 1;







      if ((instruction->size > 2) && (shift == WORD_SHIFT))
 {
   if (arg->type == arg_idxrp)
     {
       CR16_PRINT (0, ((constant >> WORD_SHIFT) & mask) << 8, 0);
       CR16_PRINT (1, (constant & 0xFFFF), WORD_SHIFT);
     }
   else
     {
       CR16_PRINT (0, (((((constant >> WORD_SHIFT) & mask) << 8) & 0x0f00) | ((((constant >> WORD_SHIFT) & mask) >> 4) & 0xf)),0);
       CR16_PRINT (1, (constant & 0xFFFF), WORD_SHIFT);
     }
 }
      else
 CR16_PRINT (0, constant, shift);
      break;

    case 14:
      if (arg->type == arg_idxrp)
 {
   if (instruction->size == 2)
     {
       CR16_PRINT (0, ((constant)&0xf), shift);
       CR16_PRINT (0, ((constant>>4)&0x3), (shift+20));
       CR16_PRINT (0, ((constant>>6)&0x3), (shift+14));
       CR16_PRINT (0, ((constant>>8)&0x3f), (shift+8));
     }
   else
     CR16_PRINT (0, constant, shift);
 }
      break;

    case 16:
    case 12:
      if ((instruction->size > 2) && (shift == WORD_SHIFT))
 CR16_PRINT (1, constant, WORD_SHIFT);
      else
 CR16_PRINT (0, constant, shift);
      break;

    case 8:
      CR16_PRINT (0, ((constant/2)&0xf), shift);
      CR16_PRINT (0, ((constant/2)>>4), (shift+8));
      break;

    default:
      CR16_PRINT (0, constant, shift);
      break;
    }
}
