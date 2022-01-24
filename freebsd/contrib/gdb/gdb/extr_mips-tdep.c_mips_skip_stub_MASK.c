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
typedef  int t_inst ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ MIPS_INSTLEN ; 
 int RA_REGNUM ; 
 scalar_t__ FUNC0 (scalar_t__,char**,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (CORE_ADDR pc)
{
  char *name;
  CORE_ADDR start_addr;

  /* Find the starting address and name of the function containing the PC.  */
  if (FUNC0 (pc, &name, &start_addr, NULL) == 0)
    return 0;

  /* If the PC is in __mips16_ret_{d,s}f, this is a return stub and the
     target PC is in $31 ($ra).  */
  if (FUNC3 (name, "__mips16_ret_sf") == 0
      || FUNC3 (name, "__mips16_ret_df") == 0)
    return FUNC2 (RA_REGNUM);

  if (FUNC4 (name, "__mips16_call_stub_", 19) == 0)
    {
      /* If the PC is in __mips16_call_stub_{1..10}, this is a call stub
         and the target PC is in $2.  */
      if (name[19] >= '0' && name[19] <= '9')
	return FUNC2 (2);

      /* If the PC at the start of __mips16_call_stub_{s,d}f_{0..10}, i.e.
         before the jal instruction, this is effectively a call stub
         and the the target PC is in $2.  Otherwise this is effectively
         a return stub and the target PC is in $18.  */
      else if (name[19] == 's' || name[19] == 'd')
	{
	  if (pc == start_addr)
	    {
	      /* Check if the target of the stub is a compiler-generated
	         stub.  Such a stub for a function bar might have a name
	         like __fn_stub_bar, and might look like this:
	         mfc1    $4,$f13
	         mfc1    $5,$f12
	         mfc1    $6,$f15
	         mfc1    $7,$f14
	         la      $1,bar   (becomes a lui/addiu pair)
	         jr      $1
	         So scan down to the lui/addi and extract the target
	         address from those two instructions.  */

	      CORE_ADDR target_pc = FUNC2 (2);
	      t_inst inst;
	      int i;

	      /* See if the name of the target function is  __fn_stub_*.  */
	      if (FUNC0 (target_pc, &name, NULL, NULL) ==
		  0)
		return target_pc;
	      if (FUNC4 (name, "__fn_stub_", 10) != 0
		  && FUNC3 (name, "etext") != 0
		  && FUNC3 (name, "_etext") != 0)
		return target_pc;

	      /* Scan through this _fn_stub_ code for the lui/addiu pair.
	         The limit on the search is arbitrarily set to 20
	         instructions.  FIXME.  */
	      for (i = 0, pc = 0; i < 20; i++, target_pc += MIPS_INSTLEN)
		{
		  inst = FUNC1 (target_pc);
		  if ((inst & 0xffff0000) == 0x3c010000)	/* lui $at */
		    pc = (inst << 16) & 0xffff0000;	/* high word */
		  else if ((inst & 0xffff0000) == 0x24210000)	/* addiu $at */
		    return pc | (inst & 0xffff);	/* low word */
		}

	      /* Couldn't find the lui/addui pair, so return stub address.  */
	      return target_pc;
	    }
	  else
	    /* This is the 'return' part of a call stub.  The return
	       address is in $r18.  */
	    return FUNC2 (18);
	}
    }
  return 0;			/* not a stub */
}