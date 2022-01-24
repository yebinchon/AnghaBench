#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gdbarch_tdep {scalar_t__ mips_abi; } ;
struct disassemble_info {scalar_t__ mach; char* disassembler_options; int /*<<< orphan*/  flavour; } ;
typedef  scalar_t__ mips_extra_func_info_t ;
typedef  int bfd_vma ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ BFD_ENDIAN_BIG ; 
 scalar_t__ MIPS_ABI_N32 ; 
 scalar_t__ MIPS_ABI_N64 ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 scalar_t__ bfd_mach_mips16 ; 
 int /*<<< orphan*/  bfd_target_elf_flavour ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int,struct disassemble_info*) ; 
 int FUNC7 (int,struct disassemble_info*) ; 

__attribute__((used)) static int
FUNC8 (bfd_vma memaddr, struct disassemble_info *info)
{
  struct gdbarch_tdep *tdep = FUNC2 (current_gdbarch);
  mips_extra_func_info_t proc_desc;

  /* Search for the function containing this address.  Set the low bit
     of the address when searching, in case we were given an even address
     that is the start of a 16-bit function.  If we didn't do this,
     the search would fail because the symbol table says the function
     starts at an odd address, i.e. 1 byte past the given address.  */
  memaddr = FUNC0 (memaddr);
  proc_desc = FUNC4 (FUNC3 (memaddr), NULL);

  /* Make an attempt to determine if this is a 16-bit function.  If
     the procedure descriptor exists and the address therein is odd,
     it's definitely a 16-bit function.  Otherwise, we have to just
     guess that if the address passed in is odd, it's 16-bits.  */
  /* FIXME: cagney/2003-06-26: Is this even necessary?  The
     disassembler needs to be able to locally determine the ISA, and
     not rely on GDB.  Otherwize the stand-alone 'objdump -d' will not
     work.  */
  if (proc_desc)
    {
      if (FUNC5 (FUNC1 (proc_desc)))
	info->mach = bfd_mach_mips16;
    }
  else
    {
      if (FUNC5 (memaddr))
	info->mach = bfd_mach_mips16;
    }

  /* Round down the instruction address to the appropriate boundary.  */
  memaddr &= (info->mach == bfd_mach_mips16 ? ~1 : ~3);

  /* Set the disassembler options.  */
  if (tdep->mips_abi == MIPS_ABI_N32 || tdep->mips_abi == MIPS_ABI_N64)
    {
      /* Set up the disassembler info, so that we get the right
         register names from libopcodes.  */
      if (tdep->mips_abi == MIPS_ABI_N32)
	info->disassembler_options = "gpr-names=n32";
      else
	info->disassembler_options = "gpr-names=64";
      info->flavour = bfd_target_elf_flavour;
    }
  else
    /* This string is not recognized explicitly by the disassembler,
       but it tells the disassembler to not try to guess the ABI from
       the bfd elf headers, such that, if the user overrides the ABI
       of a program linked as NewABI, the disassembly will follow the
       register naming conventions specified by the user.  */
    info->disassembler_options = "gpr-names=32";

  /* Call the appropriate disassembler based on the target endian-ness.  */
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    return FUNC6 (memaddr, info);
  else
    return FUNC7 (memaddr, info);
}