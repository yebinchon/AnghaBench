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
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  arg_reg_buffer ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 scalar_t__ ALPHA_A0_REGNUM ; 
 scalar_t__ ALPHA_FPA0_REGNUM ; 
 int ALPHA_NUM_ARG_REGS ; 
 int /*<<< orphan*/  ALPHA_RA_REGNUM ; 
 int ALPHA_REGISTER_SIZE ; 
 int /*<<< orphan*/  ALPHA_SP_REGNUM ; 
 int /*<<< orphan*/  ALPHA_T12_REGNUM ; 
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_BOOL 134 
#define  TYPE_CODE_CHAR 133 
#define  TYPE_CODE_COMPLEX 132 
#define  TYPE_CODE_ENUM 131 
#define  TYPE_CODE_FLT 130 
#define  TYPE_CODE_INT 129 
#define  TYPE_CODE_RANGE 128 
 int FUNC1 (struct type*) ; 
 char* FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct type* builtin_type_ieee_double_little ; 
 struct type* builtin_type_int32 ; 
 struct type* builtin_type_int64 ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 struct type* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct regcache*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct regcache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 struct value* FUNC11 (struct type*,struct value*) ; 
 struct value* FUNC12 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC14 (struct gdbarch *gdbarch, CORE_ADDR func_addr,
		       struct regcache *regcache, CORE_ADDR bp_addr,
		       int nargs, struct value **args, CORE_ADDR sp,
		       int struct_return, CORE_ADDR struct_addr)
{
  int i;
  int accumulate_size = struct_return ? 8 : 0;
  struct alpha_arg
    {
      char *contents;
      int len;
      int offset;
    };
  struct alpha_arg *alpha_args
    = (struct alpha_arg *) FUNC4 (nargs * sizeof (struct alpha_arg));
  struct alpha_arg *m_arg;
  char arg_reg_buffer[ALPHA_REGISTER_SIZE * ALPHA_NUM_ARG_REGS];
  int required_arg_regs;

  /* The ABI places the address of the called function in T12.  */
  FUNC9 (regcache, ALPHA_T12_REGNUM, func_addr);

  /* Set the return address register to point to the entry point
     of the program, where a breakpoint lies in wait.  */
  FUNC9 (regcache, ALPHA_RA_REGNUM, bp_addr);

  /* Lay out the arguments in memory.  */
  for (i = 0, m_arg = alpha_args; i < nargs; i++, m_arg++)
    {
      struct value *arg = args[i];
      struct type *arg_type = FUNC5 (FUNC3 (arg));

      /* Cast argument to long if necessary as the compiler does it too.  */
      switch (FUNC0 (arg_type))
	{
	case TYPE_CODE_INT:
	case TYPE_CODE_BOOL:
	case TYPE_CODE_CHAR:
	case TYPE_CODE_RANGE:
	case TYPE_CODE_ENUM:
	  if (FUNC1 (arg_type) == 4)
	    {
	      /* 32-bit values must be sign-extended to 64 bits
		 even if the base data type is unsigned.  */
	      arg_type = builtin_type_int32;
	      arg = FUNC11 (arg_type, arg);
	    }
	  if (FUNC1 (arg_type) < ALPHA_REGISTER_SIZE)
	    {
	      arg_type = builtin_type_int64;
	      arg = FUNC11 (arg_type, arg);
	    }
	  break;

	case TYPE_CODE_FLT:
	  /* "float" arguments loaded in registers must be passed in
	     register format, aka "double".  */
	  if (accumulate_size < sizeof (arg_reg_buffer)
	      && FUNC1 (arg_type) == 4)
	    {
	      arg_type = builtin_type_ieee_double_little;
	      arg = FUNC11 (arg_type, arg);
	    }
	  /* Tru64 5.1 has a 128-bit long double, and passes this by
	     invisible reference.  No one else uses this data type.  */
	  else if (FUNC1 (arg_type) == 16)
	    {
	      /* Allocate aligned storage.  */
	      sp = (sp & -16) - 16;

	      /* Write the real data into the stack.  */
	      FUNC13 (sp, FUNC2 (arg), 16);

	      /* Construct the indirection.  */
	      arg_type = FUNC6 (arg_type);
	      arg = FUNC12 (arg_type, sp);
	    }
	  break;

	case TYPE_CODE_COMPLEX:
	  /* ??? The ABI says that complex values are passed as two
	     separate scalar values.  This distinction only matters
	     for complex float.  However, GCC does not implement this.  */

	  /* Tru64 5.1 has a 128-bit long double, and passes this by
	     invisible reference.  */
	  if (FUNC1 (arg_type) == 32)
	    {
	      /* Allocate aligned storage.  */
	      sp = (sp & -16) - 16;

	      /* Write the real data into the stack.  */
	      FUNC13 (sp, FUNC2 (arg), 32);

	      /* Construct the indirection.  */
	      arg_type = FUNC6 (arg_type);
	      arg = FUNC12 (arg_type, sp);
	    }
	  break;

	default:
	  break;
	}
      m_arg->len = FUNC1 (arg_type);
      m_arg->offset = accumulate_size;
      accumulate_size = (accumulate_size + m_arg->len + 7) & ~7;
      m_arg->contents = FUNC2 (arg);
    }

  /* Determine required argument register loads, loading an argument register
     is expensive as it uses three ptrace calls.  */
  required_arg_regs = accumulate_size / 8;
  if (required_arg_regs > ALPHA_NUM_ARG_REGS)
    required_arg_regs = ALPHA_NUM_ARG_REGS;

  /* Make room for the arguments on the stack.  */
  if (accumulate_size < sizeof(arg_reg_buffer))
    accumulate_size = 0;
  else
    accumulate_size -= sizeof(arg_reg_buffer);
  sp -= accumulate_size;

  /* Keep sp aligned to a multiple of 16 as the ABI requires.  */
  sp &= ~15;

  /* `Push' arguments on the stack.  */
  for (i = nargs; m_arg--, --i >= 0;)
    {
      char *contents = m_arg->contents;
      int offset = m_arg->offset;
      int len = m_arg->len;

      /* Copy the bytes destined for registers into arg_reg_buffer.  */
      if (offset < sizeof(arg_reg_buffer))
	{
	  if (offset + len <= sizeof(arg_reg_buffer))
	    {
	      FUNC7 (arg_reg_buffer + offset, contents, len);
	      continue;
	    }
	  else
	    {
	      int tlen = sizeof(arg_reg_buffer) - offset;
	      FUNC7 (arg_reg_buffer + offset, contents, tlen);
	      offset += tlen;
	      contents += tlen;
	      len -= tlen;
	    }
	}

      /* Everything else goes to the stack.  */
      FUNC13 (sp + offset - sizeof(arg_reg_buffer), contents, len);
    }
  if (struct_return)
    FUNC10 (arg_reg_buffer, ALPHA_REGISTER_SIZE, struct_addr);

  /* Load the argument registers.  */
  for (i = 0; i < required_arg_regs; i++)
    {
      FUNC8 (regcache, ALPHA_A0_REGNUM + i,
			     arg_reg_buffer + i*ALPHA_REGISTER_SIZE);
      FUNC8 (regcache, ALPHA_FPA0_REGNUM + i,
			     arg_reg_buffer + i*ALPHA_REGISTER_SIZE);
    }

  /* Finally, update the stack pointer.  */
  FUNC9 (regcache, ALPHA_SP_REGNUM, sp);

  return sp;
}