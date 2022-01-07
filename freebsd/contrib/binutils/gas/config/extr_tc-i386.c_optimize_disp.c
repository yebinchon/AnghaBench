
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int offsetT ;
typedef int addressT ;
struct TYPE_9__ {scalar_t__ X_op; int X_add_number; } ;
struct TYPE_8__ {scalar_t__ fr_literal; } ;
struct TYPE_7__ {int operands; int* types; scalar_t__* reloc; TYPE_1__* op; int disp_operands; } ;
struct TYPE_6__ {TYPE_5__* disps; } ;


 scalar_t__ BFD_RELOC_386_TLS_DESC_CALL ;
 scalar_t__ BFD_RELOC_X86_64_TLSDESC_CALL ;
 int BaseIndex ;
 scalar_t__ CODE_64BIT ;
 int Disp ;
 int Disp16 ;
 int Disp32 ;
 int Disp32S ;
 int Disp64 ;
 int Disp8 ;
 scalar_t__ O_constant ;
 scalar_t__ fits_in_signed_byte (int) ;
 scalar_t__ fits_in_signed_long (int) ;
 scalar_t__ fits_in_unsigned_long (int) ;
 int fix_new_exp (TYPE_3__*,scalar_t__,int ,TYPE_5__*,int ,scalar_t__) ;
 scalar_t__ flag_code ;
 scalar_t__ frag_more (int ) ;
 TYPE_3__* frag_now ;
 TYPE_2__ i ;

__attribute__((used)) static void
optimize_disp (void)
{
  int op;

  for (op = i.operands; --op >= 0;)
    if (i.types[op] & Disp)
      {
 if (i.op[op].disps->X_op == O_constant)
   {
     offsetT disp = i.op[op].disps->X_add_number;

     if ((i.types[op] & Disp16)
  && (disp & ~(offsetT) 0xffff) == 0)
       {



  disp = (((disp & 0xffff) ^ 0x8000) - 0x8000);
  i.types[op] &= ~Disp64;
       }
     if ((i.types[op] & Disp32)
  && (disp & ~(((offsetT) 2 << 31) - 1)) == 0)
       {



  disp &= (((offsetT) 2 << 31) - 1);
  disp = (disp ^ ((offsetT) 1 << 31)) - ((addressT) 1 << 31);
  i.types[op] &= ~Disp64;
       }
     if (!disp && (i.types[op] & BaseIndex))
       {
  i.types[op] &= ~Disp;
  i.op[op].disps = 0;
  i.disp_operands--;
       }
     else if (flag_code == CODE_64BIT)
       {
  if (fits_in_signed_long (disp))
    {
      i.types[op] &= ~Disp64;
      i.types[op] |= Disp32S;
    }
  if (fits_in_unsigned_long (disp))
    i.types[op] |= Disp32;
       }
     if ((i.types[op] & (Disp32 | Disp32S | Disp16))
  && fits_in_signed_byte (disp))
       i.types[op] |= Disp8;
   }
 else if (i.reloc[op] == BFD_RELOC_386_TLS_DESC_CALL
   || i.reloc[op] == BFD_RELOC_X86_64_TLSDESC_CALL)
   {
     fix_new_exp (frag_now, frag_more (0) - frag_now->fr_literal, 0,
    i.op[op].disps, 0, i.reloc[op]);
     i.types[op] &= ~Disp;
   }
  else

   i.types[op] &= ~Disp64;
      }
}
