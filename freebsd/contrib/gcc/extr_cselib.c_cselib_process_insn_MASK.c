#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_8__ {TYPE_2__* elt; } ;
struct TYPE_7__ {int n_elements; } ;
struct TYPE_5__ {int /*<<< orphan*/  val_rtx; } ;
struct TYPE_6__ {TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ ASM_OPERANDS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CLOBBER ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ MAX_USELESS_VALUES ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ REG_INC ; 
 int /*<<< orphan*/  REG_LIBCALL ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  REG_RETVAL ; 
 int /*<<< orphan*/  REG_SETJMP ; 
 TYPE_4__* FUNC13 (int) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__* call_used_regs ; 
 int /*<<< orphan*/  callmem ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ cselib_current_insn ; 
 int cselib_current_insn_in_libcall ; 
 TYPE_3__* cselib_hash_table ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ n_useless_values ; 
 int /*<<< orphan*/ * reg_raw_mode ; 
 int /*<<< orphan*/  FUNC21 () ; 

void
FUNC22 (rtx insn)
{
  int i;
  rtx x;

  if (FUNC20 (insn, REG_LIBCALL, NULL))
    cselib_current_insn_in_libcall = true;
  cselib_current_insn = insn;

  /* Forget everything at a CODE_LABEL, a volatile asm, or a setjmp.  */
  if (FUNC7 (insn)
      || (FUNC1 (insn)
	  && FUNC20 (insn, REG_SETJMP, NULL))
      || (FUNC9 (insn)
	  && FUNC3 (FUNC10 (insn)) == ASM_OPERANDS
	  && FUNC8 (FUNC10 (insn))))
    {
      if (FUNC20 (insn, REG_RETVAL, NULL))
        cselib_current_insn_in_libcall = false;
      FUNC15 ();
      return;
    }

  if (! FUNC6 (insn))
    {
      if (FUNC20 (insn, REG_RETVAL, NULL))
        cselib_current_insn_in_libcall = false;
      cselib_current_insn = 0;
      return;
    }

  /* If this is a call instruction, forget anything stored in a
     call clobbered register, or, if this is not a const call, in
     memory.  */
  if (FUNC1 (insn))
    {
      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
	if (call_used_regs[i]
	    || (FUNC13 (i) && FUNC13 (i)->elt
		&& FUNC5 (i, 
		      FUNC4 (FUNC13 (i)->elt->u.val_rtx))))
	  FUNC17 (i, reg_raw_mode[i]);

      if (! FUNC2 (insn))
	FUNC16 (callmem);
    }

  FUNC19 (insn);

#ifdef AUTO_INC_DEC
  /* Clobber any registers which appear in REG_INC notes.  We
     could keep track of the changes to their values, but it is
     unlikely to help.  */
  for (x = REG_NOTES (insn); x; x = XEXP (x, 1))
    if (REG_NOTE_KIND (x) == REG_INC)
      cselib_invalidate_rtx (XEXP (x, 0));
#endif

  /* Look for any CLOBBERs in CALL_INSN_FUNCTION_USAGE, but only
     after we have processed the insn.  */
  if (FUNC1 (insn))
    for (x = FUNC0 (insn); x; x = FUNC14 (x, 1))
      if (FUNC3 (FUNC14 (x, 0)) == CLOBBER)
	FUNC18 (FUNC14 (FUNC14 (x, 0), 0));

  if (FUNC20 (insn, REG_RETVAL, NULL))
    cselib_current_insn_in_libcall = false;
  cselib_current_insn = 0;

  if (n_useless_values > MAX_USELESS_VALUES
      /* remove_useless_values is linear in the hash table size.  Avoid
         quadratic behaviour for very large hashtables with very few
	 useless elements.  */
      && (unsigned int)n_useless_values > cselib_hash_table->n_elements / 4)
    FUNC21 ();
}