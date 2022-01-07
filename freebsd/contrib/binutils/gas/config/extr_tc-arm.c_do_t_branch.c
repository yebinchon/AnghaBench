
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pc_rel; int type; } ;
struct TYPE_4__ {int cond; int instruction; int size_req; int relax; TYPE_1__ reloc; } ;


 int BAD_BRANCH ;
 int BFD_RELOC_THUMB_PCREL_BRANCH12 ;
 int BFD_RELOC_THUMB_PCREL_BRANCH20 ;
 int BFD_RELOC_THUMB_PCREL_BRANCH25 ;
 int BFD_RELOC_THUMB_PCREL_BRANCH9 ;
 int COND_ALWAYS ;
 int THUMB_OP16 (int) ;
 int THUMB_OP32 (int) ;
 int T_MNEM_bcond ;
 int assert (int) ;
 int constraint (int,int ) ;
 int current_it_mask ;
 TYPE_2__ inst ;
 scalar_t__ unified_syntax ;

__attribute__((used)) static void
do_t_branch (void)
{
  int opcode;
  int cond;

  if (current_it_mask)
    {


      cond = COND_ALWAYS;

      constraint (current_it_mask != 0x10, BAD_BRANCH);
    }
  else
    cond = inst.cond;

  if (cond != COND_ALWAYS)
    opcode = T_MNEM_bcond;
  else
    opcode = inst.instruction;

  if (unified_syntax && inst.size_req == 4)
    {
      inst.instruction = THUMB_OP32(opcode);
      if (cond == COND_ALWAYS)
 inst.reloc.type = BFD_RELOC_THUMB_PCREL_BRANCH25;
      else
 {
   assert (cond != 0xF);
   inst.instruction |= cond << 22;
   inst.reloc.type = BFD_RELOC_THUMB_PCREL_BRANCH20;
 }
    }
  else
    {
      inst.instruction = THUMB_OP16(opcode);
      if (cond == COND_ALWAYS)
 inst.reloc.type = BFD_RELOC_THUMB_PCREL_BRANCH12;
      else
 {
   inst.instruction |= cond << 8;
   inst.reloc.type = BFD_RELOC_THUMB_PCREL_BRANCH9;
 }

      if (unified_syntax && inst.size_req != 2)
 inst.relax = opcode;
    }

  inst.reloc.pc_rel = 1;
}
