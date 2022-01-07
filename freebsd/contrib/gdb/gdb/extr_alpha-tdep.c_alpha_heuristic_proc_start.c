
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {scalar_t__ vm_min_address; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ NO_STOP_QUIETLY ;
 scalar_t__ UINT_MAX ;
 unsigned int alpha_read_insn (scalar_t__) ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 scalar_t__ get_pc_function_start (scalar_t__) ;
 scalar_t__ heuristic_fence_post ;
 int paddr_nz (scalar_t__) ;
 int printf_filtered (char*) ;
 scalar_t__ stop_soon ;
 int warning (char*,...) ;

__attribute__((used)) static CORE_ADDR
alpha_heuristic_proc_start (CORE_ADDR pc)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  CORE_ADDR last_non_nop = pc;
  CORE_ADDR fence = pc - heuristic_fence_post;
  CORE_ADDR orig_pc = pc;
  CORE_ADDR func;

  if (pc == 0)
    return 0;




  func = get_pc_function_start (pc);
  if (func)
    return func;

  if (heuristic_fence_post == UINT_MAX
      || fence < tdep->vm_min_address)
    fence = tdep->vm_min_address;




  for (pc -= 4; pc >= fence; pc -= 4)
    {
      unsigned int insn = alpha_read_insn (pc);
      switch (insn)
 {
 case 0:
 case 0x6bfa8001:
   return last_non_nop;

 case 0x2ffe0000:
 case 0x47ff041f:
   break;

 default:
   last_non_nop = pc;
   break;
 }
    }




  if (stop_soon == NO_STOP_QUIETLY)
    {
      static int blurb_printed = 0;

      if (fence == tdep->vm_min_address)
 warning ("Hit beginning of text section without finding");
      else
 warning ("Hit heuristic-fence-post without finding");
      warning ("enclosing function for address 0x%s", paddr_nz (orig_pc));

      if (!blurb_printed)
 {
   printf_filtered ("This warning occurs if you are debugging a function without any symbols\n(for example, in a stripped executable).  In that case, you may wish to\nincrease the size of the search with the `set heuristic-fence-post' command.\n\nOtherwise, you told GDB there was a function where there isn't one, or\n(more likely) you have encountered a bug in GDB.\n");






   blurb_printed = 1;
 }
    }

  return 0;
}
