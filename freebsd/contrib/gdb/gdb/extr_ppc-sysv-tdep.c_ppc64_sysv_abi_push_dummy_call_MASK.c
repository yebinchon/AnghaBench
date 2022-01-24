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
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct obj_section {int /*<<< orphan*/ * objfile; } ;
struct minimal_symbol {int dummy; } ;
struct gdbarch_tdep {int wordsize; int ppc_gp0_regnum; scalar_t__ ppc_vr0_regnum; int ppc_lr_regnum; } ;
struct gdbarch {int dummy; } ;
typedef  int ULONGEST ;
typedef  int LONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FP0_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int SP_REGNUM ; 
 char* FUNC0 (struct minimal_symbol*) ; 
 int FUNC1 (struct minimal_symbol*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_INT ; 
 int FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 char* FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int,int) ; 
 struct type* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct type*,char*,struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct obj_section* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct gdbarch_tdep* FUNC13 (int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct minimal_symbol* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int,int) ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct regcache*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct regcache*,int,int) ; 
 struct type* FUNC24 (struct gdbarch*,int) ; 
 int FUNC25 (struct type*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int,int,int const) ; 
 int /*<<< orphan*/  FUNC28 (int,int,int) ; 

CORE_ADDR
FUNC29 (struct gdbarch *gdbarch, CORE_ADDR func_addr,
				struct regcache *regcache, CORE_ADDR bp_addr,
				int nargs, struct value **args, CORE_ADDR sp,
				int struct_return, CORE_ADDR struct_addr)
{
  struct gdbarch_tdep *tdep = FUNC13 (current_gdbarch);
  /* By this stage in the proceedings, SP has been decremented by "red
     zone size" + "struct return size".  Fetch the stack-pointer from
     before this and use that as the BACK_CHAIN.  */
  const CORE_ADDR back_chain = FUNC20 ();
  /* See for-loop comment below.  */
  int write_pass;
  /* Size of the Altivec's vector parameter region, the final value is
     computed in the for-loop below.  */
  LONGEST vparam_size = 0;
  /* Size of the general parameter region, the final value is computed
     in the for-loop below.  */
  LONGEST gparam_size = 0;
  /* Kevin writes ... I don't mind seeing tdep->wordsize used in the
     calls to align_up(), align_down(), etc.  because this makes it
     easier to reuse this code (in a copy/paste sense) in the future,
     but it is a 64-bit ABI and asserting that the wordsize is 8 bytes
     at some point makes it easier to verify that this function is
     correct without having to do a non-local analysis to figure out
     the possible values of tdep->wordsize.  */
  FUNC12 (tdep->wordsize == 8);

  /* Go through the argument list twice.

     Pass 1: Compute the function call's stack space and register
     requirements.

     Pass 2: Replay the same computation but this time also write the
     values out to the target.  */

  for (write_pass = 0; write_pass < 2; write_pass++)
    {
      int argno;
      /* Next available floating point register for float and double
         arguments.  */
      int freg = 1;
      /* Next available general register for non-vector (but possibly
         float) arguments.  */
      int greg = 3;
      /* Next available vector register for vector arguments.  */
      int vreg = 2;
      /* The address, at which the next general purpose parameter
         (integer, struct, float, ...) should be saved.  */
      CORE_ADDR gparam;
      /* Address, at which the next Altivec vector parameter should be
         saved.  */
      CORE_ADDR vparam;

      if (!write_pass)
	{
	  /* During the first pass, GPARAM and VPARAM are more like
	     offsets (start address zero) than addresses.  That way
	     the accumulate the total stack space each region
	     requires.  */
	  gparam = 0;
	  vparam = 0;
	}
      else
	{
	  /* Decrement the stack pointer making space for the Altivec
	     and general on-stack parameters.  Set vparam and gparam
	     to their corresponding regions.  */
	  vparam = FUNC7 (sp - vparam_size, 16);
	  gparam = FUNC7 (vparam - gparam_size, 16);
	  /* Add in space for the TOC, link editor double word,
	     compiler double word, LR save area, CR save area.  */
	  sp = FUNC7 (gparam - 48, 16);
	}

      /* If the function is returning a `struct', then there is an
         extra hidden parameter (which will be passed in r3)
         containing the address of that struct..  In that case we
         should advance one word and start from r4 register to copy
         parameters.  This also consumes one on-stack parameter slot.  */
      if (struct_return)
	{
	  if (write_pass)
	    FUNC22 (regcache,
					  tdep->ppc_gp0_regnum + greg,
					  struct_addr);
	  greg++;
	  gparam = FUNC8 (gparam + tdep->wordsize, tdep->wordsize);
	}

      for (argno = 0; argno < nargs; argno++)
	{
	  struct value *arg = args[argno];
	  struct type *type = FUNC9 (FUNC6 (arg));
	  char *val = FUNC5 (arg);
	  if (FUNC2 (type) == TYPE_CODE_FLT && FUNC3 (type) <= 8)
	    {
	      /* Floats and Doubles go in f1 .. f13.  They also
	         consume a left aligned GREG,, and can end up in
	         memory.  */
	      if (write_pass)
		{
		  if (FUNC18 (current_gdbarch)
		      && freg <= 13)
		    {
		      char regval[MAX_REGISTER_SIZE];
		      struct type *regtype = FUNC24 (gdbarch,
							    FP0_REGNUM);
		      FUNC10 (val, type, regval, regtype);
		      FUNC21 (regcache, FP0_REGNUM + freg,
					     regval);
		    }
		  if (greg <= 10)
		    {
		      /* The ABI states "Single precision floating
		         point values are mapped to the first word in
		         a single doubleword" and "... floating point
		         values mapped to the first eight doublewords
		         of the parameter save area are also passed in
		         general registers").

		         This code interprets that to mean: store it,
		         left aligned, in the general register.  */
		      char regval[MAX_REGISTER_SIZE];
		      FUNC17 (regval, 0, sizeof regval);
		      FUNC16 (regval, val, FUNC3 (type));
		      FUNC21 (regcache,
					     tdep->ppc_gp0_regnum + greg,
					     regval);
		    }
		  FUNC26 (gparam, val, FUNC3 (type));
		}
	      /* Always consume parameter stack space.  */
	      freg++;
	      greg++;
	      gparam = FUNC8 (gparam + FUNC3 (type), tdep->wordsize);
	    }
	  else if (FUNC3 (type) == 16 && FUNC4 (type)
		   && FUNC2 (type) == TYPE_CODE_ARRAY
		   && tdep->ppc_vr0_regnum >= 0)
	    {
	      /* In the Altivec ABI, vectors go in the vector
	         registers v2 .. v13, or when that runs out, a vector
	         annex which goes above all the normal parameters.
	         NOTE: cagney/2003-09-21: This is a guess based on the
	         PowerOpen Altivec ABI.  */
	      if (vreg <= 13)
		{
		  if (write_pass)
		    FUNC21 (regcache,
					   tdep->ppc_vr0_regnum + vreg, val);
		  vreg++;
		}
	      else
		{
		  if (write_pass)
		    FUNC26 (vparam, val, FUNC3 (type));
		  vparam = FUNC8 (vparam + FUNC3 (type), 16);
		}
	    }
	  else if ((FUNC2 (type) == TYPE_CODE_INT
		    || FUNC2 (type) == TYPE_CODE_ENUM)
		   && FUNC3 (type) <= 8)
	    {
	      /* Scalars get sign[un]extended and go in gpr3 .. gpr10.
	         They can also end up in memory.  */
	      if (write_pass)
		{
		  /* Sign extend the value, then store it unsigned.  */
		  ULONGEST word = FUNC25 (type, val);
		  if (greg <= 10)
		    FUNC23 (regcache,
						    tdep->ppc_gp0_regnum +
						    greg, word);
		  FUNC28 (gparam, tdep->wordsize,
						 word);
		}
	      greg++;
	      gparam = FUNC8 (gparam + FUNC3 (type), tdep->wordsize);
	    }
	  else
	    {
	      int byte;
	      for (byte = 0; byte < FUNC3 (type);
		   byte += tdep->wordsize)
		{
		  if (write_pass && greg <= 10)
		    {
		      char regval[MAX_REGISTER_SIZE];
		      int len = FUNC3 (type) - byte;
		      if (len > tdep->wordsize)
			len = tdep->wordsize;
		      FUNC17 (regval, 0, sizeof regval);
		      /* WARNING: cagney/2003-09-21: As best I can
		         tell, the ABI specifies that the value should
		         be left aligned.  Unfortunately, GCC doesn't
		         do this - it instead right aligns even sized
		         values and puts odd sized values on the
		         stack.  Work around that by putting both a
		         left and right aligned value into the
		         register (hopefully no one notices :-^).
		         Arrrgh!  */
		      /* Left aligned (8 byte values such as pointers
		         fill the buffer).  */
		      FUNC16 (regval, val + byte, len);
		      /* Right aligned (but only if even).  */
		      if (len == 1 || len == 2 || len == 4)
			FUNC16 (regval + tdep->wordsize - len,
				val + byte, len);
		      FUNC21 (regcache, greg, regval);
		    }
		  greg++;
		}
	      if (write_pass)
		/* WARNING: cagney/2003-09-21: Strictly speaking, this
		   isn't necessary, unfortunately, GCC appears to get
		   "struct convention" parameter passing wrong putting
		   odd sized structures in memory instead of in a
		   register.  Work around this by always writing the
		   value to memory.  Fortunately, doing this
		   simplifies the code.  */
		FUNC26 (gparam, val, FUNC3 (type));
	      /* Always consume parameter stack space.  */
	      gparam = FUNC8 (gparam + FUNC3 (type), tdep->wordsize);
	    }
	}

      if (!write_pass)
	{
	  /* Save the true region sizes ready for the second pass.  */
	  vparam_size = vparam;
	  /* Make certain that the general parameter save area is at
	     least the minimum 8 registers (or doublewords) in size.  */
	  if (greg < 8)
	    gparam_size = 8 * tdep->wordsize;
	  else
	    gparam_size = gparam;
	}
    }

  /* Update %sp.   */
  FUNC22 (regcache, SP_REGNUM, sp);

  /* Write the backchain (it occupies WORDSIZED bytes).  */
  FUNC27 (sp, tdep->wordsize, back_chain);

  /* Point the inferior function call's return address at the dummy's
     breakpoint.  */
  FUNC22 (regcache, tdep->ppc_lr_regnum, bp_addr);

  /* Find a value for the TOC register.  Every symbol should have both
     ".FN" and "FN" in the minimal symbol table.  "FN" points at the
     FN's descriptor, while ".FN" points at the entry point (which
     matches FUNC_ADDR).  Need to reverse from FUNC_ADDR back to the
     FN's descriptor address (while at the same time being careful to
     find "FN" in the same object file as ".FN").  */
  {
    /* Find the minimal symbol that corresponds to FUNC_ADDR (should
       have the name ".FN").  */
    struct minimal_symbol *dot_fn = FUNC15 (func_addr);
    if (dot_fn != NULL && FUNC0 (dot_fn)[0] == '.')
      {
	/* Get the section that contains FUNC_ADR.  Need this for the
           "objfile" that it contains.  */
	struct obj_section *dot_fn_section = FUNC11 (func_addr);
	if (dot_fn_section != NULL && dot_fn_section->objfile != NULL)
	  {
	    /* Now find the corresponding "FN" (dropping ".") minimal
	       symbol's address.  Only look for the minimal symbol in
	       ".FN"'s object file - avoids problems when two object
	       files (i.e., shared libraries) contain a minimal symbol
	       with the same name.  */
	    struct minimal_symbol *fn =
	      FUNC14 (FUNC0 (dot_fn) + 1, NULL,
				     dot_fn_section->objfile);
	    if (fn != NULL)
	      {
		/* Got the address of that descriptor.  The TOC is the
		   second double word.  */
		CORE_ADDR toc =
		  FUNC19 (FUNC1 (fn)
						+ tdep->wordsize,
						tdep->wordsize);
		FUNC23 (regcache,
						tdep->ppc_gp0_regnum + 2, toc);
	      }
	  }
      }
  }

  return sp;
}