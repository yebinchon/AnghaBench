
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {scalar_t__ line; scalar_t__ end; } ;
struct arm_prologue_cache {int framesize; int frameoffset; size_t framereg; TYPE_1__* saved_regs; } ;
struct TYPE_2__ {int addr; } ;
typedef scalar_t__ CORE_ADDR ;


 int ARM_LR_REGNUM ;
 int ARM_SP_REGNUM ;
 size_t THUMB_FP_REGNUM ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 scalar_t__ find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 unsigned short read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static void
thumb_scan_prologue (CORE_ADDR prev_pc, struct arm_prologue_cache *cache)
{
  CORE_ADDR prologue_start;
  CORE_ADDR prologue_end;
  CORE_ADDR current_pc;

  int saved_reg[16];





  int findmask = 0;
  int i;

  if (find_pc_partial_function (prev_pc, ((void*)0), &prologue_start, &prologue_end))
    {
      struct symtab_and_line sal = find_pc_line (prologue_start, 0);

      if (sal.line == 0)
 prologue_end = prev_pc;
      else if (sal.end < prologue_end)
 prologue_end = sal.end;
    }
  else


    prologue_end = prologue_start + 40;

  prologue_end = min (prologue_end, prev_pc);



  for (i = 0; i < 16; i++)
    saved_reg[i] = i;





  cache->framesize = 0;
  for (current_pc = prologue_start;
       (current_pc < prologue_end) && ((findmask & 7) != 7);
       current_pc += 2)
    {
      unsigned short insn;
      int regno;
      int offset;

      insn = read_memory_unsigned_integer (current_pc, 2);

      if ((insn & 0xfe00) == 0xb400)
 {
   int mask;
   findmask |= 1;


   mask = (insn & 0xff) | ((insn & 0x100) << 6);


   for (regno = ARM_LR_REGNUM; regno >= 0; regno--)
     if (mask & (1 << regno))
       {
  cache->framesize += 4;
  cache->saved_regs[saved_reg[regno]].addr = -cache->framesize;

  saved_reg[regno] = regno;
       }
 }
      else if ((insn & 0xff00) == 0xb000)

 {
   if ((findmask & 1) == 0)
     continue;
   else
     findmask |= 4;

   offset = (insn & 0x7f) << 2;
   if (insn & 0x80)
     {
       cache->frameoffset += offset;
       offset = -offset;
     }
   cache->framesize -= offset;
 }
      else if ((insn & 0xff00) == 0xaf00)
 {
   findmask |= 2;
   cache->framereg = THUMB_FP_REGNUM;

   cache->frameoffset = (insn & 0xff) << 2;
 }
      else if (insn == 0x466f)
 {
   findmask |= 2;
   cache->framereg = THUMB_FP_REGNUM;
   cache->frameoffset = 0;
   saved_reg[THUMB_FP_REGNUM] = ARM_SP_REGNUM;
 }
      else if ((insn & 0xffc0) == 0x4640)
 {
   int lo_reg = insn & 7;
   int hi_reg = ((insn >> 3) & 7) + 8;
   saved_reg[lo_reg] = hi_reg;
 }
      else



 continue;
    }
}
