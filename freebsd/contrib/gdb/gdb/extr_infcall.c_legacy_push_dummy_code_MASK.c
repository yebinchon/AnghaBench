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
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  dummy ;
typedef  scalar_t__ ULONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int DEPRECATED_CALL_DUMMY_BREAKPOINT_OFFSET ; 
 scalar_t__ DEPRECATED_CALL_DUMMY_START_OFFSET ; 
 int /*<<< orphan*/  DEPRECATED_CALL_DUMMY_WORDS ; 
 int FUNC0 (char*,int,int,int,struct value**,struct type*,int) ; 
 scalar_t__ FUNC1 () ; 
 int DEPRECATED_REGISTER_SIZE ; 
 int DEPRECATED_SIZEOF_CALL_DUMMY_WORDS ; 
 scalar_t__ DEPRECATED_USE_GENERIC_DUMMY_FRAMES ; 
 scalar_t__ FUNC2 (int,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC9 (struct gdbarch *gdbarch,
			CORE_ADDR sp, CORE_ADDR funaddr, int using_gcc,
			struct value **args, int nargs,
			struct type *value_type,
			CORE_ADDR *real_pc, CORE_ADDR *bp_addr)
{
  /* CALL_DUMMY is an array of words (DEPRECATED_REGISTER_SIZE), but
     each word is in host byte order.  Before calling
     DEPRECATED_FIX_CALL_DUMMY, we byteswap it and remove any extra
     bytes which might exist because ULONGEST is bigger than
     DEPRECATED_REGISTER_SIZE.  */
  /* NOTE: This is pretty wierd, as the call dummy is actually a
     sequence of instructions.  But CISC machines will have to pack
     the instructions into DEPRECATED_REGISTER_SIZE units (and so will
     RISC machines for which INSTRUCTION_SIZE is not
     DEPRECATED_REGISTER_SIZE).  */
  /* NOTE: This is pretty stupid.  CALL_DUMMY should be in strict
     target byte order. */
  CORE_ADDR start_sp;
  ULONGEST *dummy = FUNC3 (DEPRECATED_SIZEOF_CALL_DUMMY_WORDS);
  int sizeof_dummy1 = (DEPRECATED_REGISTER_SIZE
		       * DEPRECATED_SIZEOF_CALL_DUMMY_WORDS
		       / sizeof (ULONGEST));
  char *dummy1 = FUNC3 (sizeof_dummy1);
  FUNC6 (dummy, DEPRECATED_CALL_DUMMY_WORDS,
	  DEPRECATED_SIZEOF_CALL_DUMMY_WORDS);
  if (FUNC2 (1, 2))
    {
      /* Stack grows down */
      sp -= sizeof_dummy1;
      start_sp = sp;
    }
  else
    {
      /* Stack grows up */
      start_sp = sp;
      sp += sizeof_dummy1;
    }
  /* NOTE: cagney/2002-09-10: Don't bother re-adjusting the stack
     after allocating space for the call dummy.  A target can specify
     a SIZEOF_DUMMY1 (via DEPRECATED_SIZEOF_CALL_DUMMY_WORDS) such
     that all local alignment requirements are met.  */
  /* Create a call sequence customized for this function and the
     number of arguments for it.  */
  {
    int i;
    for (i = 0; i < (int) (DEPRECATED_SIZEOF_CALL_DUMMY_WORDS / sizeof (dummy[0]));
	 i++)
      FUNC7 (&dummy1[i * DEPRECATED_REGISTER_SIZE],
			      DEPRECATED_REGISTER_SIZE,
			      (ULONGEST) dummy[i]);
  }
  /* NOTE: cagney/2003-04-22: This computation of REAL_PC, BP_ADDR and
     DUMMY_ADDR is pretty messed up.  It comes from constant tinkering
     with the values.  Instead a DEPRECATED_FIX_CALL_DUMMY replacement
     (PUSH_DUMMY_BREAKPOINT?) should just do everything.  */
  if (!FUNC4 (current_gdbarch))
    {
#ifdef GDB_TARGET_IS_HPPA
      (*real_pc) = DEPRECATED_FIX_CALL_DUMMY (dummy1, start_sp, funaddr, nargs,
					      args, value_type, using_gcc);
#else
      if (FUNC1 ())
	{
	  /* gdb_assert (CALL_DUMMY_LOCATION == ON_STACK) true?  */
	  FUNC0 (dummy1, start_sp, funaddr, nargs, args,
				     value_type, using_gcc);
	}
      (*real_pc) = start_sp;
#endif
    }
  /* Yes, the offset is applied to the real_pc and not the dummy addr.
     Ulgh!  Blame the HP/UX target.  */
  (*bp_addr) = (*real_pc) + DEPRECATED_CALL_DUMMY_BREAKPOINT_OFFSET;
  /* Yes, the offset is applied to the real_pc and not the
     dummy_addr.  Ulgh!  Blame the HP/UX target.  */
  (*real_pc) += DEPRECATED_CALL_DUMMY_START_OFFSET;
  FUNC8 (start_sp, (char *) dummy1, sizeof_dummy1);
  if (DEPRECATED_USE_GENERIC_DUMMY_FRAMES)
    FUNC5 (start_sp, start_sp + sizeof_dummy1);
  return sp;
}