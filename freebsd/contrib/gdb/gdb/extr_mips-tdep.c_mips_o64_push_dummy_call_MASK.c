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
struct gdbarch_tdep {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  int LONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int A0_REGNUM ; 
 scalar_t__ BFD_ENDIAN_BIG ; 
 scalar_t__ FP_REGISTER_DOUBLE ; 
 int MIPS_LAST_ARG_REGNUM ; 
 int MIPS_LAST_FP_ARG_REGNUM ; 
 int /*<<< orphan*/  RA_REGNUM ; 
 int /*<<< orphan*/  SP_REGNUM ; 
 int /*<<< orphan*/  T9_REGNUM ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 int TARGET_CHAR_BIT ; 
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_FLT ; 
 int TYPE_CODE_INT ; 
 int TYPE_CODE_PTR ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 int FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 struct type* FUNC3 (struct value*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 struct type* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int FUNC7 (char*,int) ; 
 void* FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (int,struct type*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 struct gdbarch_tdep* FUNC12 (struct gdbarch*) ; 
 scalar_t__ mips_debug ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct gdbarch_tdep*) ; 
 int FUNC15 (struct gdbarch_tdep*) ; 
 scalar_t__ FUNC16 (struct type*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct regcache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC22 (struct gdbarch *gdbarch, CORE_ADDR func_addr,
			  struct regcache *regcache, CORE_ADDR bp_addr,
			  int nargs,
			  struct value **args, CORE_ADDR sp,
			  int struct_return, CORE_ADDR struct_addr)
{
  int argreg;
  int float_argreg;
  int argnum;
  int len = 0;
  int stack_offset = 0;
  struct gdbarch_tdep *tdep = FUNC12 (gdbarch);

  /* For shared libraries, "t9" needs to point at the function
     address.  */
  FUNC19 (regcache, T9_REGNUM, func_addr);

  /* Set the return address register to point to the entry point of
     the program, where a breakpoint lies in wait.  */
  FUNC19 (regcache, RA_REGNUM, bp_addr);

  /* First ensure that the stack and structure return address (if any)
     are properly aligned.  The stack has to be at least 64-bit
     aligned even on 32-bit machines, because doubles must be 64-bit
     aligned.  For n32 and n64, stack frames need to be 128-bit
     aligned, so we round to this widest known alignment.  */

  sp = FUNC4 (sp, 16);
  struct_addr = FUNC4 (struct_addr, 16);

  /* Now make space on the stack for the args.  */
  for (argnum = 0; argnum < nargs; argnum++)
    len += FUNC5 (FUNC1 (FUNC3 (args[argnum])),
		     FUNC15 (tdep));
  sp -= FUNC5 (len, 16);

  if (mips_debug)
    FUNC11 (gdb_stdlog,
			"mips_o64_push_dummy_call: sp=0x%s allocated %ld\n",
			FUNC17 (sp), (long) FUNC5 (len, 16));

  /* Initialize the integer and float register pointers.  */
  argreg = A0_REGNUM;
  float_argreg = FUNC13 (current_gdbarch);

  /* The struct_return pointer occupies the first parameter-passing reg.  */
  if (struct_return)
    {
      if (mips_debug)
	FUNC11 (gdb_stdlog,
			    "mips_o64_push_dummy_call: struct_return reg=%d 0x%s\n",
			    argreg, FUNC17 (struct_addr));
      FUNC21 (argreg++, struct_addr);
      stack_offset += FUNC15 (tdep);
    }

  /* Now load as many as possible of the first arguments into
     registers, and push the rest onto the stack.  Loop thru args
     from first to last.  */
  for (argnum = 0; argnum < nargs; argnum++)
    {
      char *val;
      struct value *arg = args[argnum];
      struct type *arg_type = FUNC6 (FUNC3 (arg));
      int len = FUNC1 (arg_type);
      enum type_code typecode = FUNC0 (arg_type);

      if (mips_debug)
	FUNC11 (gdb_stdlog,
			    "mips_o64_push_dummy_call: %d len=%d type=%d",
			    argnum + 1, len, (int) typecode);

      val = (char *) FUNC2 (arg);

      /* 32-bit ABIs always start floating point arguments in an
         even-numbered floating point register.  Round the FP register
         up before the check to see if there are any FP registers
         left.  O32/O64 targets also pass the FP in the integer
         registers so also round up normal registers.  */
      if (!FP_REGISTER_DOUBLE && FUNC9 (typecode, arg_type))
	{
	  if ((float_argreg & 1))
	    float_argreg++;
	}

      /* Floating point arguments passed in registers have to be
         treated specially.  On 32-bit architectures, doubles
         are passed in register pairs; the even register gets
         the low word, and the odd register gets the high word.
         On O32/O64, the first two floating point arguments are
         also copied to general registers, because MIPS16 functions
         don't use float registers for arguments.  This duplication of
         arguments in general registers can't hurt non-MIPS16 functions
         because those registers are normally skipped.  */

      if (FUNC9 (typecode, arg_type)
	  && float_argreg <= MIPS_LAST_FP_ARG_REGNUM)
	{
	  if (!FP_REGISTER_DOUBLE && len == 8)
	    {
	      int low_offset = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? 4 : 0;
	      unsigned long regval;

	      /* Write the low word of the double to the even register(s).  */
	      regval = FUNC8 (val + low_offset, 4);
	      if (mips_debug)
		FUNC11 (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, FUNC18 (regval, 4));
	      FUNC21 (float_argreg++, regval);
	      if (mips_debug)
		FUNC11 (gdb_stdlog, " - reg=%d val=%s",
				    argreg, FUNC18 (regval, 4));
	      FUNC21 (argreg++, regval);

	      /* Write the high word of the double to the odd register(s).  */
	      regval = FUNC8 (val + 4 - low_offset, 4);
	      if (mips_debug)
		FUNC11 (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, FUNC18 (regval, 4));
	      FUNC21 (float_argreg++, regval);

	      if (mips_debug)
		FUNC11 (gdb_stdlog, " - reg=%d val=%s",
				    argreg, FUNC18 (regval, 4));
	      FUNC21 (argreg++, regval);
	    }
	  else
	    {
	      /* This is a floating point value that fits entirely
	         in a single register.  */
	      /* On 32 bit ABI's the float_argreg is further adjusted
	         above to ensure that it is even register aligned.  */
	      LONGEST regval = FUNC8 (val, len);
	      if (mips_debug)
		FUNC11 (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, FUNC18 (regval, len));
	      FUNC21 (float_argreg++, regval);
	      /* CAGNEY: 32 bit MIPS ABI's always reserve two FP
	         registers for each argument.  The below is (my
	         guess) to ensure that the corresponding integer
	         register has reserved the same space.  */
	      if (mips_debug)
		FUNC11 (gdb_stdlog, " - reg=%d val=%s",
				    argreg, FUNC18 (regval, len));
	      FUNC21 (argreg, regval);
	      argreg += FP_REGISTER_DOUBLE ? 1 : 2;
	    }
	  /* Reserve space for the FP register.  */
	  stack_offset += FUNC5 (len, FUNC15 (tdep));
	}
      else
	{
	  /* Copy the argument to general registers or the stack in
	     register-sized pieces.  Large arguments are split between
	     registers and stack.  */
	  /* Note: structs whose size is not a multiple of
	     mips_regsize() are treated specially: Irix cc passes them
	     in registers where gcc sometimes puts them on the stack.
	     For maximum compatibility, we will put them in both
	     places.  */
	  int odd_sized_struct = ((len > FUNC14 (tdep))
				  && (len % FUNC14 (tdep) != 0));
	  /* Structures should be aligned to eight bytes (even arg registers)
	     on MIPS_ABI_O32, if their first member has double precision.  */
	  if (FUNC14 (tdep) < 8
	      && FUNC16 (arg_type))
	    {
	      if ((argreg & 1))
		argreg++;
	    }
	  /* Note: Floating-point values that didn't fit into an FP
	     register are only written to memory.  */
	  while (len > 0)
	    {
	      /* Remember if the argument was written to the stack.  */
	      int stack_used_p = 0;
	      int partial_len = (len < FUNC14 (tdep)
				 ? len : FUNC14 (tdep));

	      if (mips_debug)
		FUNC11 (gdb_stdlog, " -- partial=%d",
				    partial_len);

	      /* Write this portion of the argument to the stack.  */
	      if (argreg > MIPS_LAST_ARG_REGNUM
		  || odd_sized_struct
		  || FUNC9 (typecode, arg_type))
		{
		  /* Should shorter than int integer values be
		     promoted to int before being stored? */
		  int longword_offset = 0;
		  CORE_ADDR addr;
		  stack_used_p = 1;
		  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
		    {
		      if (FUNC15 (tdep) == 8
			  && (typecode == TYPE_CODE_INT
			      || typecode == TYPE_CODE_PTR
			      || typecode == TYPE_CODE_FLT) && len <= 4)
			longword_offset = FUNC15 (tdep) - len;
		    }

		  if (mips_debug)
		    {
		      FUNC11 (gdb_stdlog, " - stack_offset=0x%s",
					  FUNC17 (stack_offset));
		      FUNC11 (gdb_stdlog, " longword_offset=0x%s",
					  FUNC17 (longword_offset));
		    }

		  addr = sp + stack_offset + longword_offset;

		  if (mips_debug)
		    {
		      int i;
		      FUNC11 (gdb_stdlog, " @0x%s ",
					  FUNC17 (addr));
		      for (i = 0; i < partial_len; i++)
			{
			  FUNC11 (gdb_stdlog, "%02x",
					      val[i] & 0xff);
			}
		    }
		  FUNC20 (addr, val, partial_len);
		}

	      /* Note!!! This is NOT an else clause.  Odd sized
	         structs may go thru BOTH paths.  Floating point
	         arguments will not.  */
	      /* Write this portion of the argument to a general
	         purpose register.  */
	      if (argreg <= MIPS_LAST_ARG_REGNUM
		  && !FUNC9 (typecode, arg_type))
		{
		  LONGEST regval = FUNC7 (val, partial_len);
		  /* Value may need to be sign extended, because
		     mips_regsize() != mips_saved_regsize().  */

		  /* A non-floating-point argument being passed in a
		     general register.  If a struct or union, and if
		     the remaining length is smaller than the register
		     size, we have to adjust the register value on
		     big endian targets.

		     It does not seem to be necessary to do the
		     same for integral types.

		     Also don't do this adjustment on O64 binaries.

		     cagney/2001-07-23: gdb/179: Also, GCC, when
		     outputting LE O32 with sizeof (struct) <
		     mips_saved_regsize(), generates a left shift as
		     part of storing the argument in a register a
		     register (the left shift isn't generated when
		     sizeof (struct) >= mips_saved_regsize()).  Since
		     it is quite possible that this is GCC
		     contradicting the LE/O32 ABI, GDB has not been
		     adjusted to accommodate this.  Either someone
		     needs to demonstrate that the LE/O32 ABI
		     specifies such a left shift OR this new ABI gets
		     identified as such and GDB gets tweaked
		     accordingly.  */

		  if (FUNC14 (tdep) < 8
		      && TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
		      && partial_len < FUNC14 (tdep)
		      && (typecode == TYPE_CODE_STRUCT ||
			  typecode == TYPE_CODE_UNION))
		    regval <<= ((FUNC14 (tdep) - partial_len) *
				TARGET_CHAR_BIT);

		  if (mips_debug)
		    FUNC10 (gdb_stdlog, " - reg=%d val=%s",
				      argreg,
				      FUNC18 (regval,
					    FUNC14 (tdep)));
		  FUNC21 (argreg, regval);
		  argreg++;

		  /* Prevent subsequent floating point arguments from
		     being passed in floating point registers.  */
		  float_argreg = MIPS_LAST_FP_ARG_REGNUM + 1;
		}

	      len -= partial_len;
	      val += partial_len;

	      /* Compute the the offset into the stack at which we
	         will copy the next parameter.

	         In older ABIs, the caller reserved space for
	         registers that contained arguments.  This was loosely
	         refered to as their "home".  Consequently, space is
	         always allocated.  */

	      stack_offset += FUNC5 (partial_len,
					FUNC15 (tdep));
	    }
	}
      if (mips_debug)
	FUNC11 (gdb_stdlog, "\n");
    }

  FUNC19 (regcache, SP_REGNUM, sp);

  /* Return adjusted stack pointer.  */
  return sp;
}