
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {int instruction; int size_req; TYPE_2__* operands; TYPE_1__ reloc; } ;
struct TYPE_5__ {int reg; scalar_t__ shifted; int isreg; scalar_t__ immisreg; scalar_t__ present; } ;


 int BAD_HIREG ;
 int BAD_THUMB32 ;
 int BFD_RELOC_ARM_T32_IMMEDIATE ;
 int FALSE ;
 void* THUMB_OP16 (int) ;
 void* THUMB_OP32 (int) ;
 int THUMB_SETS_FLAGS (int) ;
 int _ (char*) ;
 int constraint (int,int ) ;
 scalar_t__ current_it_mask ;
 int encode_thumb32_shifted_operand (int) ;
 TYPE_3__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_arit3c (void)
{
  int Rd, Rs, Rn;

  Rd = inst.operands[0].reg;
  Rs = (inst.operands[1].present
 ? inst.operands[1].reg
 : inst.operands[0].reg);
  Rn = inst.operands[2].reg;

  if (unified_syntax)
    {
      if (!inst.operands[2].isreg)
 {


   inst.instruction = THUMB_OP32 (inst.instruction);
   inst.instruction = (inst.instruction & 0xe1ffffff) | 0x10000000;
   inst.instruction |= Rd << 8;
   inst.instruction |= Rs << 16;
   inst.reloc.type = BFD_RELOC_ARM_T32_IMMEDIATE;
 }
      else
 {
   bfd_boolean narrow;


   if (THUMB_SETS_FLAGS (inst.instruction))
     narrow = current_it_mask == 0;
   else
     narrow = current_it_mask != 0;

   if (Rd > 7 || Rn > 7 || Rs > 7)
     narrow = FALSE;
   if (inst.operands[2].shifted)
     narrow = FALSE;
   if (inst.size_req == 4)
     narrow = FALSE;

   if (narrow)
     {
       if (Rd == Rs)
  {
    inst.instruction = THUMB_OP16 (inst.instruction);
    inst.instruction |= Rd;
    inst.instruction |= Rn << 3;
    return;
  }
       if (Rd == Rn)
  {
    inst.instruction = THUMB_OP16 (inst.instruction);
    inst.instruction |= Rd;
    inst.instruction |= Rs << 3;
    return;
  }
     }


   constraint (inst.operands[2].shifted
        && inst.operands[2].immisreg,
        _("shift must be constant"));
   inst.instruction = THUMB_OP32 (inst.instruction);
   inst.instruction |= Rd << 8;
   inst.instruction |= Rs << 16;
   encode_thumb32_shifted_operand (2);
 }
    }
  else
    {



      constraint (THUMB_SETS_FLAGS (inst.instruction), BAD_THUMB32);

      constraint (!inst.operands[2].isreg || inst.operands[2].shifted,
    _("unshifted register required"));
      constraint (Rd > 7 || Rs > 7 || Rn > 7, BAD_HIREG);

      inst.instruction = THUMB_OP16 (inst.instruction);
      inst.instruction |= Rd;

      if (Rd == Rs)
 inst.instruction |= Rn << 3;
      else if (Rd == Rn)
 inst.instruction |= Rs << 3;
      else
 constraint (1, _("dest must overlap one source register"));
    }
}
