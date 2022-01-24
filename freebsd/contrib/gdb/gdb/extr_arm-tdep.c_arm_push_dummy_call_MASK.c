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
struct stack_item {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int ARM_A1_REGNUM ; 
 int ARM_LAST_ARG_REGNUM ; 
 int ARM_LR_REGNUM ; 
 int ARM_SP_REGNUM ; 
 int DEPRECATED_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_FUNC ; 
 int TYPE_CODE_PTR ; 
 int FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 char* FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 char* FUNC7 (int) ; 
 scalar_t__ arm_debug ; 
 scalar_t__ FUNC8 (int) ; 
 struct type* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 struct stack_item* FUNC14 (struct stack_item*) ; 
 struct stack_item* FUNC15 (struct stack_item*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct regcache*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static CORE_ADDR
FUNC19 (struct gdbarch *gdbarch, CORE_ADDR func_addr,
		     struct regcache *regcache, CORE_ADDR bp_addr, int nargs,
		     struct value **args, CORE_ADDR sp, int struct_return,
		     CORE_ADDR struct_addr)
{
  int argnum;
  int argreg;
  int nstack;
  struct stack_item *si = NULL;

  /* Set the return address.  For the ARM, the return breakpoint is
     always at BP_ADDR.  */
  /* XXX Fix for Thumb.  */
  FUNC16 (regcache, ARM_LR_REGNUM, bp_addr);

  /* Walk through the list of args and determine how large a temporary
     stack is required.  Need to take care here as structs may be
     passed on the stack, and we have to to push them.  */
  nstack = 0;

  argreg = ARM_A1_REGNUM;
  nstack = 0;

  /* Some platforms require a double-word aligned stack.  Make sure sp
     is correctly aligned before we start.  We always do this even if
     it isn't really needed -- it can never hurt things.  */
  sp &= ~(CORE_ADDR)(2 * DEPRECATED_REGISTER_SIZE - 1);

  /* The struct_return pointer occupies the first parameter
     passing register.  */
  if (struct_return)
    {
      if (arm_debug)
	FUNC11 (gdb_stdlog, "struct return in %s = 0x%s\n",
			    FUNC1 (argreg), FUNC12 (struct_addr));
      FUNC16 (regcache, argreg, struct_addr);
      argreg++;
    }

  for (argnum = 0; argnum < nargs; argnum++)
    {
      int len;
      struct type *arg_type;
      struct type *target_type;
      enum type_code typecode;
      char *val;

      arg_type = FUNC9 (FUNC6 (args[argnum]));
      len = FUNC3 (arg_type);
      target_type = FUNC4 (arg_type);
      typecode = FUNC2 (arg_type);
      val = FUNC5 (args[argnum]);

      /* If the argument is a pointer to a function, and it is a
	 Thumb function, create a LOCAL copy of the value and set
	 the THUMB bit in it.  */
      if (TYPE_CODE_PTR == typecode
	  && target_type != NULL
	  && TYPE_CODE_FUNC == FUNC2 (target_type))
	{
	  CORE_ADDR regval = FUNC10 (val, len);
	  if (FUNC8 (regval))
	    {
	      val = FUNC7 (len);
	      FUNC17 (val, len, FUNC0 (regval));
	    }
	}

      /* Copy the argument to general registers or the stack in
	 register-sized pieces.  Large arguments are split between
	 registers and stack.  */
      while (len > 0)
	{
	  int partial_len = len < DEPRECATED_REGISTER_SIZE ? len : DEPRECATED_REGISTER_SIZE;

	  if (argreg <= ARM_LAST_ARG_REGNUM)
	    {
	      /* The argument is being passed in a general purpose
		 register.  */
	      CORE_ADDR regval = FUNC10 (val, partial_len);
	      if (arm_debug)
		FUNC11 (gdb_stdlog, "arg %d in %s = 0x%s\n",
				    argnum, FUNC1 (argreg),
				    FUNC13 (regval, DEPRECATED_REGISTER_SIZE));
	      FUNC16 (regcache, argreg, regval);
	      argreg++;
	    }
	  else
	    {
	      /* Push the arguments onto the stack.  */
	      if (arm_debug)
		FUNC11 (gdb_stdlog, "arg %d @ sp + %d\n",
				    argnum, nstack);
	      si = FUNC15 (si, val, DEPRECATED_REGISTER_SIZE);
	      nstack += DEPRECATED_REGISTER_SIZE;
	    }
	      
	  len -= partial_len;
	  val += partial_len;
	}
    }
  /* If we have an odd number of words to push, then decrement the stack
     by one word now, so first stack argument will be dword aligned.  */
  if (nstack & 4)
    sp -= 4;

  while (si)
    {
      sp -= si->len;
      FUNC18 (sp, si->data, si->len);
      si = FUNC14 (si);
    }

  /* Finally, update teh SP register.  */
  FUNC16 (regcache, ARM_SP_REGNUM, sp);

  return sp;
}