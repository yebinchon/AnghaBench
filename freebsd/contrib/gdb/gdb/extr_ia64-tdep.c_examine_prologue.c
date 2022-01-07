
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int tmp ;
struct ia64_frame_cache {scalar_t__ after_prologue; int cfm; scalar_t__* saved_regs; scalar_t__ sor; scalar_t__ sof; scalar_t__ sol; scalar_t__ bsp; int frameless; int mem_stack_frame_size; int fp_reg; scalar_t__ prev_cfm; } ;
struct frame_info {int dummy; } ;
typedef scalar_t__ instruction_type ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ B ;
 scalar_t__ I ;
 size_t IA64_CFM_REGNUM ;
 int IA64_FR0_REGNUM ;
 int IA64_GR0_REGNUM ;
 int IA64_GR32_REGNUM ;
 size_t IA64_PR_REGNUM ;
 size_t IA64_UNAT_REGNUM ;
 size_t IA64_VFP_REGNUM ;
 size_t IA64_VRAP_REGNUM ;
 scalar_t__ IS_NaT_COLLECTION_ADDR (scalar_t__) ;
 scalar_t__ M ;
 int MAX_REGISTER_SIZE ;
 scalar_t__ extract_unsigned_integer (char*,int) ;
 scalar_t__ fetch_instruction (scalar_t__,scalar_t__*,long long*) ;
 int frame_unwind_register (struct frame_info*,int,char*) ;
 int ia64_read_reg (scalar_t__,scalar_t__*,int) ;
 int imm9 (long long) ;
 scalar_t__ isScratch (int) ;
 int memset (char*,int ,int) ;
 scalar_t__ refine_prologue_limit (scalar_t__,scalar_t__,int*) ;
 scalar_t__ rse_address_add (scalar_t__,scalar_t__) ;
 int sp_regnum ;

__attribute__((used)) static CORE_ADDR
examine_prologue (CORE_ADDR pc, CORE_ADDR lim_pc, struct frame_info *next_frame, struct ia64_frame_cache *cache)
{
  CORE_ADDR next_pc;
  CORE_ADDR last_prologue_pc = pc;
  instruction_type it;
  long long instr;
  int cfm_reg = 0;
  int ret_reg = 0;
  int fp_reg = 0;
  int unat_save_reg = 0;
  int pr_save_reg = 0;
  int mem_stack_frame_size = 0;
  int spill_reg = 0;
  CORE_ADDR spill_addr = 0;
  char instores[8];
  char infpstores[8];
  char reg_contents[256];
  int trust_limit;
  int frameless = 1;
  int i;
  CORE_ADDR addr;
  char buf[8];
  CORE_ADDR bof, sor, sol, sof, cfm, rrb_gr;

  memset (instores, 0, sizeof instores);
  memset (infpstores, 0, sizeof infpstores);
  memset (reg_contents, 0, sizeof reg_contents);

  if (cache->after_prologue != 0
      && cache->after_prologue <= lim_pc)
    return cache->after_prologue;

  lim_pc = refine_prologue_limit (pc, lim_pc, &trust_limit);
  next_pc = fetch_instruction (pc, &it, &instr);



  if (pc < lim_pc && next_pc
      && it == M && ((instr & 0x1ee0000003fLL) == 0x02c00000000LL))
    {

      int sor = (int) ((instr & 0x00078000000LL) >> 27);
      int sol = (int) ((instr & 0x00007f00000LL) >> 20);
      int sof = (int) ((instr & 0x000000fe000LL) >> 13);
      int rN = (int) ((instr & 0x00000001fc0LL) >> 6);






      if (!next_frame ||
   (sof == (cache->cfm & 0x7f) &&
    sol == ((cache->cfm >> 7) & 0x7f)))
 frameless = 0;

      cfm_reg = rN;
      last_prologue_pc = next_pc;
      pc = next_pc;
    }
  else
    {

      if (pc < lim_pc && next_pc
   && (it == I || it == M)
          && ((instr & 0x1ee00000000LL) == 0x10800000000LL))
 {

   int imm = (int) ((((instr & 0x01000000000LL) ? -1 : 0) << 13)
                    | ((instr & 0x001f8000000LL) >> 20)
             | ((instr & 0x000000fe000LL) >> 13));
   int rM = (int) ((instr & 0x00007f00000LL) >> 20);
   int rN = (int) ((instr & 0x00000001fc0LL) >> 6);
   int qp = (int) (instr & 0x0000000003fLL);
   if (qp == 0 && rN == 2 && imm == 0 && rM == 12 && fp_reg == 0)
     {

       fp_reg = rN;
       last_prologue_pc = next_pc;
     }
 }



      if (!fp_reg)
 {
   pc = lim_pc;
   if (trust_limit)
     last_prologue_pc = lim_pc;
 }
    }



  while (pc < lim_pc)
    {
      next_pc = fetch_instruction (pc, &it, &instr);
      if (next_pc == 0)
 break;

      if (it == B && ((instr & 0x1e1f800003f) != 0x04000000000))
 {

   if (trust_limit)
     lim_pc = pc;
   break;
 }
      else if (((instr & 0x3fLL) != 0LL) &&
        (frameless || ret_reg != 0))
 {


   if (trust_limit)
     lim_pc = pc;
   break;
 }
      else if (it == I && ((instr & 0x1eff8000000LL) == 0x00188000000LL))
        {

   int b2 = (int) ((instr & 0x0000000e000LL) >> 13);
   int rN = (int) ((instr & 0x00000001fc0LL) >> 6);
   int qp = (int) (instr & 0x0000000003f);

   if (qp == 0 && b2 == 0 && rN >= 32 && ret_reg == 0)
     {
       ret_reg = rN;
       last_prologue_pc = next_pc;
     }
 }
      else if ((it == I || it == M)
          && ((instr & 0x1ee00000000LL) == 0x10800000000LL))
 {

   int imm = (int) ((((instr & 0x01000000000LL) ? -1 : 0) << 13)
                    | ((instr & 0x001f8000000LL) >> 20)
             | ((instr & 0x000000fe000LL) >> 13));
   int rM = (int) ((instr & 0x00007f00000LL) >> 20);
   int rN = (int) ((instr & 0x00000001fc0LL) >> 6);
   int qp = (int) (instr & 0x0000000003fLL);

   if (qp == 0 && rN >= 32 && imm == 0 && rM == 12 && fp_reg == 0)
     {

       fp_reg = rN;
       last_prologue_pc = next_pc;
     }
   else if (qp == 0 && rN == 12 && rM == 12)
     {

       mem_stack_frame_size -= imm;
       last_prologue_pc = next_pc;
     }
   else if (qp == 0 && rN == 2
         && ((rM == fp_reg && fp_reg != 0) || rM == 12))
     {
       char buf[MAX_REGISTER_SIZE];
       CORE_ADDR saved_sp = 0;
       if (next_frame)
  {
    frame_unwind_register (next_frame, sp_regnum, buf);
    saved_sp = extract_unsigned_integer (buf, 8);
  }
       spill_addr = saved_sp
                   + (rM == 12 ? 0 : mem_stack_frame_size)
     + imm;
       spill_reg = rN;
       last_prologue_pc = next_pc;
     }
   else if (qp == 0 && rM >= 32 && rM < 40 && !instores[rM] &&
     rN < 256 && imm == 0)
     {

       reg_contents[rN] = rM;
       last_prologue_pc = next_pc;
     }
   else if (frameless && qp == 0 && rN == fp_reg && imm == 0 &&
     rM == 2)
     {

       last_prologue_pc = next_pc;
       break;
     }
 }
      else if (it == M
            && ( ((instr & 0x1efc0000000LL) == 0x0eec0000000LL)
                || ((instr & 0x1ffc8000000LL) == 0x0cec0000000LL) ))
 {




   int imm = imm9(instr);
   int rN = (int) ((instr & 0x00007f00000LL) >> 20);
   int fM = (int) ((instr & 0x000000fe000LL) >> 13);
   int qp = (int) (instr & 0x0000000003fLL);
   if (qp == 0 && rN == spill_reg && spill_addr != 0
       && ((2 <= fM && fM <= 5) || (16 <= fM && fM <= 31)))
     {
       cache->saved_regs[IA64_FR0_REGNUM + fM] = spill_addr;

              if ((instr & 0x1efc0000000) == 0x0eec0000000)
  spill_addr += imm;
       else
  spill_addr = 0;
       last_prologue_pc = next_pc;
     }
 }
      else if ((it == M && ((instr & 0x1eff8000000LL) == 0x02110000000LL))
            || (it == I && ((instr & 0x1eff8000000LL) == 0x00050000000LL)) )
 {




   int arM = (int) ((instr & 0x00007f00000LL) >> 20);
   int rN = (int) ((instr & 0x00000001fc0LL) >> 6);
   int qp = (int) (instr & 0x0000000003fLL);
   if (qp == 0 && isScratch (rN) && arM == 36 )
     {


       unat_save_reg = rN;
       last_prologue_pc = next_pc;
     }
 }
      else if (it == I && ((instr & 0x1eff8000000LL) == 0x00198000000LL))
 {

   int rN = (int) ((instr & 0x00000001fc0LL) >> 6);
   int qp = (int) (instr & 0x0000000003fLL);
   if (qp == 0 && isScratch (rN))
     {
       pr_save_reg = rN;
       last_prologue_pc = next_pc;
     }
 }
      else if (it == M
            && ( ((instr & 0x1ffc8000000LL) == 0x08cc0000000LL)
         || ((instr & 0x1efc0000000LL) == 0x0acc0000000LL)))
 {



   int rN = (int) ((instr & 0x00007f00000LL) >> 20);
   int rM = (int) ((instr & 0x000000fe000LL) >> 13);
   int qp = (int) (instr & 0x0000000003fLL);
   int indirect = rM < 256 ? reg_contents[rM] : 0;
   if (qp == 0 && rN == spill_reg && spill_addr != 0
       && (rM == unat_save_reg || rM == pr_save_reg))
     {




       if (rM == unat_save_reg)
  {

    cache->saved_regs[IA64_UNAT_REGNUM] = spill_addr;
    unat_save_reg = 0;
  }
       else
         {

    cache->saved_regs[IA64_PR_REGNUM] = spill_addr;
    pr_save_reg = 0;
  }
       if ((instr & 0x1efc0000000LL) == 0x0acc0000000LL)

  spill_addr += imm9(instr);
       else
  spill_addr = 0;
       last_prologue_pc = next_pc;
     }
   else if (qp == 0 && 32 <= rM && rM < 40 && !instores[rM-32])
     {

       instores[rM-32] = 1;
       last_prologue_pc = next_pc;
     }
   else if (qp == 0 && 32 <= indirect && indirect < 40 &&
     !instores[indirect-32])
     {

       instores[indirect-32] = 1;
       last_prologue_pc = next_pc;
     }
 }
      else if (it == M && ((instr & 0x1ff08000000LL) == 0x08c00000000LL))
 {
   int rM = (int) ((instr & 0x000000fe000LL) >> 13);
   int qp = (int) (instr & 0x0000000003fLL);
   int indirect = rM < 256 ? reg_contents[rM] : 0;
   if (qp == 0 && 32 <= rM && rM < 40 && !instores[rM-32])
     {
       instores[rM-32] = 1;
       last_prologue_pc = next_pc;
     }
   else if (qp == 0 && 32 <= indirect && indirect < 40 &&
     !instores[indirect-32])
     {

       instores[indirect-32] = 1;
       last_prologue_pc = next_pc;
     }
 }
      else if (it == M && ((instr & 0x1ff88000000LL) == 0x0cc80000000LL))
        {







   int fM = (int) ((instr & 0x000000fe000LL) >> 13);
   int qp = (int) (instr & 0x0000000003fLL);
   if (qp == 0 && 8 <= fM && fM < 16 && !infpstores[fM - 8])
     {
       infpstores[fM-8] = 1;
       last_prologue_pc = next_pc;
     }
 }
      else if (it == M
            && ( ((instr & 0x1ffc8000000LL) == 0x08ec0000000LL)
         || ((instr & 0x1efc0000000LL) == 0x0aec0000000LL)))
 {



   int rN = (int) ((instr & 0x00007f00000LL) >> 20);
   int rM = (int) ((instr & 0x000000fe000LL) >> 13);
   int qp = (int) (instr & 0x0000000003fLL);
   if (qp == 0 && rN == spill_reg && 4 <= rM && rM <= 7)
     {



       cache->saved_regs[IA64_GR0_REGNUM + rM] = spill_addr;
       if ((instr & 0x1efc0000000LL) == 0x0aec0000000LL)

  spill_addr += imm9(instr);
       else
  spill_addr = 0;
       last_prologue_pc = next_pc;
     }
 }

      pc = next_pc;
    }




  if (!frameless && next_frame)
    {



      cfm = cache->cfm;
      sor = cache->sor;
      sof = cache->sof;
      sol = cache->sol;
      rrb_gr = (cfm >> 18) & 0x7f;


      bof = rse_address_add (cache->bsp, -sof);

      for (i = 0, addr = bof;
    i < sof;
    i++, addr += 8)
 {
   if (IS_NaT_COLLECTION_ADDR (addr))
     {
       addr += 8;
     }
   if (i+32 == cfm_reg)
     cache->saved_regs[IA64_CFM_REGNUM] = addr;
   if (i+32 == ret_reg)
     cache->saved_regs[IA64_VRAP_REGNUM] = addr;
   if (i+32 == fp_reg)
     cache->saved_regs[IA64_VFP_REGNUM] = addr;
 }



      cfm = 0;
      if (cache->saved_regs[IA64_CFM_REGNUM] != 0)
 {
   uint64_t tmp;
   ia64_read_reg (cache->saved_regs[IA64_CFM_REGNUM], &tmp, sizeof(tmp));
   cfm = tmp;
 }
      else if (cfm_reg != 0)
 {
   frame_unwind_register (next_frame, cfm_reg, buf);
   cfm = extract_unsigned_integer (buf, 8);
 }
      cache->prev_cfm = cfm;

      if (cfm != 0)
 {
   sor = ((cfm >> 14) & 0xf) * 8;
   sof = (cfm & 0x7f);
   sol = (cfm >> 7) & 0x7f;
   rrb_gr = (cfm >> 18) & 0x7f;



   bof = rse_address_add (bof, -sol);

   for (i = 0, addr = bof;
        i < sof;
        i++, addr += 8)
     {
       if (IS_NaT_COLLECTION_ADDR (addr))
  {
    addr += 8;
  }
       if (i < sor)
  cache->saved_regs[IA64_GR32_REGNUM + ((i + (sor - rrb_gr)) % sor)]
    = addr;
       else
  cache->saved_regs[IA64_GR32_REGNUM + i] = addr;
     }

 }
    }


  if (trust_limit && lim_pc >= last_prologue_pc)
    last_prologue_pc = lim_pc;

  cache->frameless = frameless;
  cache->after_prologue = last_prologue_pc;
  cache->mem_stack_frame_size = mem_stack_frame_size;
  cache->fp_reg = fp_reg;

  return last_prologue_pc;
}
