
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct arm_prologue_cache {scalar_t__ framereg; int framesize; int frameoffset; TYPE_1__* saved_regs; } ;
struct TYPE_2__ {int addr; } ;
typedef int LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ADDR_BITS_REMOVE (int ) ;
 unsigned int ARM_F0_REGNUM ;
 scalar_t__ ARM_FP_REGNUM ;
 size_t ARM_LR_REGNUM ;
 int ARM_PC_REGNUM ;
 scalar_t__ ARM_SP_REGNUM ;
 scalar_t__ arm_pc_is_thumb (scalar_t__) ;
 scalar_t__ find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ frame_pc_unwind (struct frame_info*) ;
 int frame_tdep_pc_fixup (scalar_t__*) ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,scalar_t__) ;
 unsigned int read_memory_unsigned_integer (scalar_t__,int) ;
 int safe_read_memory_integer (scalar_t__,int,int *) ;
 int thumb_scan_prologue (scalar_t__,struct arm_prologue_cache*) ;

__attribute__((used)) static void
arm_scan_prologue (struct frame_info *next_frame, struct arm_prologue_cache *cache)
{
  int regno, sp_offset, fp_offset, ip_offset;
  CORE_ADDR prologue_start, prologue_end, current_pc;
  CORE_ADDR prev_pc = frame_pc_unwind (next_frame);


  cache->framereg = ARM_SP_REGNUM;
  cache->framesize = 0;
  cache->frameoffset = 0;

  if (frame_tdep_pc_fixup)
   frame_tdep_pc_fixup(&prev_pc);


  if (arm_pc_is_thumb (prev_pc))
    {
      thumb_scan_prologue (prev_pc, cache);
      return;
    }



  if (find_pc_partial_function (prev_pc, ((void*)0), &prologue_start, &prologue_end))
    {
      if (prologue_end > prologue_start + 64)
 {
   prologue_end = prologue_start + 64;
 }
    }
  else
    {





      CORE_ADDR frame_loc;
      LONGEST return_value;

      frame_loc = frame_unwind_register_unsigned (next_frame, ARM_FP_REGNUM);
      if (!safe_read_memory_integer (frame_loc, 4, &return_value))
        return;
      else
        {
          prologue_start = ADDR_BITS_REMOVE (return_value) - 8;
          prologue_end = prologue_start + 64;
        }
    }

  if (prev_pc < prologue_end)
    prologue_end = prev_pc;
  sp_offset = fp_offset = ip_offset = 0;

  for (current_pc = prologue_start;
       current_pc < prologue_end;
       current_pc += 4)
    {
      unsigned int insn = read_memory_unsigned_integer (current_pc, 4);

      if (insn == 0xe1a0c00d)
 {
   ip_offset = 0;
   continue;
 }
      else if ((insn & 0xfffff000) == 0xe28dc000)
 {
   unsigned imm = insn & 0xff;
   unsigned rot = (insn & 0xf00) >> 7;
   imm = (imm >> rot) | (imm << (32 - rot));
   ip_offset = imm;
   continue;
 }
      else if ((insn & 0xfffff000) == 0xe24dc000)
 {
   unsigned imm = insn & 0xff;
   unsigned rot = (insn & 0xf00) >> 7;
   imm = (imm >> rot) | (imm << (32 - rot));
   ip_offset = -imm;
   continue;
 }
      else if (insn == 0xe52de004)
 {
   sp_offset -= 4;
   cache->saved_regs[ARM_LR_REGNUM].addr = sp_offset;
   continue;
 }
      else if ((insn & 0xffff0000) == 0xe92d0000)



 {
   int mask = insn & 0xffff;


   for (regno = ARM_PC_REGNUM; regno >= 0; regno--)
     if (mask & (1 << regno))
       {
  sp_offset -= 4;
  cache->saved_regs[regno].addr = sp_offset;
       }
 }
      else if ((insn & 0xffffc000) == 0xe54b0000 ||
        (insn & 0xffffc0f0) == 0xe14b00b0 ||
        (insn & 0xffffc000) == 0xe50b0000)
 {

   continue;
 }
      else if ((insn & 0xffffc000) == 0xe5cd0000 ||
        (insn & 0xffffc0f0) == 0xe1cd00b0 ||
        (insn & 0xffffc000) == 0xe58d0000)
 {

   continue;
 }
      else if ((insn & 0xfffff000) == 0xe24cb000)
 {
   unsigned imm = insn & 0xff;
   unsigned rot = (insn & 0xf00) >> 7;
   imm = (imm >> rot) | (imm << (32 - rot));
   fp_offset = -imm + ip_offset;
   cache->framereg = ARM_FP_REGNUM;
 }
      else if ((insn & 0xfffff000) == 0xe24dd000)
 {
   unsigned imm = insn & 0xff;
   unsigned rot = (insn & 0xf00) >> 7;
   imm = (imm >> rot) | (imm << (32 - rot));
   sp_offset -= imm;
 }
      else if ((insn & 0xffff7fff) == 0xed6d0103)
 {
   sp_offset -= 12;
   regno = ARM_F0_REGNUM + ((insn >> 12) & 0x07);
   cache->saved_regs[regno].addr = sp_offset;
 }
      else if ((insn & 0xffbf0fff) == 0xec2d0200)
 {
   int n_saved_fp_regs;
   unsigned int fp_start_reg, fp_bound_reg;

   if ((insn & 0x800) == 0x800)
     {
       if ((insn & 0x40000) == 0x40000)
  n_saved_fp_regs = 3;
       else
  n_saved_fp_regs = 1;
     }
   else
     {
       if ((insn & 0x40000) == 0x40000)
  n_saved_fp_regs = 2;
       else
  n_saved_fp_regs = 4;
     }

   fp_start_reg = ARM_F0_REGNUM + ((insn >> 12) & 0x7);
   fp_bound_reg = fp_start_reg + n_saved_fp_regs;
   for (; fp_start_reg < fp_bound_reg; fp_start_reg++)
     {
       sp_offset -= 12;
       cache->saved_regs[fp_start_reg++].addr = sp_offset;
     }
 }
      else if ((insn & 0xf0000000) != 0xe0000000)
 break;
      else if ((insn & 0xfe200000) == 0xe8200000)
 break;
      else


 continue;
    }




  cache->framesize = -sp_offset;
  if (cache->framereg == ARM_FP_REGNUM)
    cache->frameoffset = fp_offset - sp_offset;
  else
    cache->frameoffset = 0;
}
