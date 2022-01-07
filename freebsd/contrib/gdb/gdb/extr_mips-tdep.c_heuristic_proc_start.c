
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ADDR_BITS_REMOVE (scalar_t__) ;
 int MIPS16_INSTLEN ;
 int MIPS_INSTLEN ;
 scalar_t__ NO_STOP_QUIETLY ;
 scalar_t__ UINT_MAX ;
 scalar_t__ VM_MIN_ADDRESS ;
 scalar_t__ heuristic_fence_post ;
 scalar_t__ mips_about_to_return (scalar_t__) ;
 unsigned short mips_fetch_instruction (scalar_t__) ;
 int paddr_nz (scalar_t__) ;
 scalar_t__ pc_is_mips16 (scalar_t__) ;
 int printf_filtered (char*,int ,int ) ;
 scalar_t__ stop_soon ;
 int warning (char*,int ) ;

__attribute__((used)) static CORE_ADDR
heuristic_proc_start (CORE_ADDR pc)
{
  CORE_ADDR start_pc;
  CORE_ADDR fence;
  int instlen;
  int seen_adjsp = 0;

  pc = ADDR_BITS_REMOVE (pc);
  start_pc = pc;
  fence = start_pc - heuristic_fence_post;
  if (start_pc == 0)
    return 0;

  if (heuristic_fence_post == UINT_MAX || fence < VM_MIN_ADDRESS)
    fence = VM_MIN_ADDRESS;

  instlen = pc_is_mips16 (pc) ? MIPS16_INSTLEN : MIPS_INSTLEN;


  for (start_pc -= instlen;; start_pc -= instlen)
    if (start_pc < fence)
      {




 if (stop_soon == NO_STOP_QUIETLY)
   {
     static int blurb_printed = 0;

     warning
       ("Warning: GDB can't find the start of the function at 0x%s.",
        paddr_nz (pc));

     if (!blurb_printed)
       {






  printf_filtered ("\n    GDB is unable to find the start of the function at 0x%s\nand thus can't determine the size of that function's stack frame.\nThis means that GDB may be unable to access that stack frame, or\nthe frames below it.\n    This problem is most likely caused by an invalid program counter or\nstack pointer.\n    However, if you think GDB should simply search farther back\nfrom 0x%s for code which looks like the beginning of a\nfunction, you can increase the range of the search using the `set\nheuristic-fence-post' command.\n", paddr_nz (pc), paddr_nz (pc));
  blurb_printed = 1;
       }
   }

 return 0;
      }
    else if (pc_is_mips16 (start_pc))
      {
 unsigned short inst;







 inst = mips_fetch_instruction (start_pc);
 if (((inst & 0xf81f) == 0xe809 && (inst & 0x700) != 0x700)
     || (inst & 0xff80) == 0x6380
     || (inst & 0xff80) == 0xfb80
     || ((inst & 0xf810) == 0xf010 && seen_adjsp))
   break;
 else if ((inst & 0xff00) == 0x6300
   || (inst & 0xff00) == 0xfb00)
   seen_adjsp = 1;
 else
   seen_adjsp = 0;
      }
    else if (mips_about_to_return (start_pc))
      {
 start_pc += 2 * MIPS_INSTLEN;
 break;
      }

  return start_pc;
}
