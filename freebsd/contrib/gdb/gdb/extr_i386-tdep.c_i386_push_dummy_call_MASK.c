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
struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  I386_EBP_REGNUM ; 
 int /*<<< orphan*/  I386_ESP_REGNUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct regcache*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC6 (struct gdbarch *gdbarch, CORE_ADDR func_addr,
		      struct regcache *regcache, CORE_ADDR bp_addr, int nargs,
		      struct value **args, CORE_ADDR sp, int struct_return,
		      CORE_ADDR struct_addr)
{
  char buf[4];
  int i;

  /* Push arguments in reverse order.  */
  for (i = nargs - 1; i >= 0; i--)
    {
      int len = FUNC0 (FUNC2 (args[i]));

      /* The System V ABI says that:

	 "An argument's size is increased, if necessary, to make it a
	 multiple of [32-bit] words.  This may require tail padding,
	 depending on the size of the argument."

	 This makes sure the stack says word-aligned.  */
      sp -= (len + 3) & ~3;
      FUNC5 (sp, FUNC1 (args[i]), len);
    }

  /* Push value address.  */
  if (struct_return)
    {
      sp -= 4;
      FUNC4 (buf, 4, struct_addr);
      FUNC5 (sp, buf, 4);
    }

  /* Store return address.  */
  sp -= 4;
  FUNC4 (buf, 4, bp_addr);
  FUNC5 (sp, buf, 4);

  /* Finally, update the stack pointer...  */
  FUNC4 (buf, 4, sp);
  FUNC3 (regcache, I386_ESP_REGNUM, buf);

  /* ...and fake a frame pointer.  */
  FUNC3 (regcache, I386_EBP_REGNUM, buf);

  /* MarkK wrote: This "+ 8" is all over the place:
     (i386_frame_this_id, i386_sigtramp_frame_this_id,
     i386_unwind_dummy_id).  It's there, since all frame unwinders for
     a given target have to agree (within a certain margin) on the
     defenition of the stack address of a frame.  Otherwise
     frame_id_inner() won't work correctly.  Since DWARF2/GCC uses the
     stack address *before* the function call as a frame's CFA.  On
     the i386, when %ebp is used as a frame pointer, the offset
     between the contents %ebp and the CFA as defined by GCC.  */
  return sp + 8;
}