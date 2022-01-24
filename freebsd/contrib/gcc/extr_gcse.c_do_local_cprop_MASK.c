#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct elt_loc_list {scalar_t__ loc; int /*<<< orphan*/  setting_insn; scalar_t__ in_libcall; struct elt_loc_list* next; } ;
typedef  scalar_t__ rtx ;
struct TYPE_3__ {struct elt_loc_list* locs; } ;
typedef  TYPE_1__ cselib_val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EQUIV ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 TYPE_1__* FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dump_file ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  local_const_prop_count ; 
 int /*<<< orphan*/  local_copy_prop_count ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC19 (rtx x, rtx insn, bool alter_jumps, rtx *libcall_sp)
{
  rtx newreg = NULL, newcnst = NULL;

  /* Rule out USE instructions and ASM statements as we don't want to
     change the hard registers mentioned.  */
  if (FUNC7 (x)
      && (FUNC6 (x) >= FIRST_PSEUDO_REGISTER
          || (FUNC1 (FUNC5 (insn)) != USE
	      && FUNC10 (FUNC5 (insn)) < 0)))
    {
      cselib_val *val = FUNC12 (x, FUNC2 (x), 0);
      struct elt_loc_list *l;

      if (!val)
	return false;
      for (l = val->locs; l; l = l->next)
	{
	  rtx this_rtx = l->loc;
	  rtx note;

	  /* Don't CSE non-constant values out of libcall blocks.  */
	  if (l->in_libcall && ! FUNC0 (this_rtx))
	    continue;

	  if (FUNC16 (this_rtx))
	    newcnst = this_rtx;
	  if (FUNC7 (this_rtx) && FUNC6 (this_rtx) >= FIRST_PSEUDO_REGISTER
	      /* Don't copy propagate if it has attached REG_EQUIV note.
		 At this point this only function parameters should have
		 REG_EQUIV notes and if the argument slot is used somewhere
		 explicitly, it means address of parameter has been taken,
		 so we should not extend the lifetime of the pseudo.  */
	      && (!(note = FUNC13 (l->setting_insn, REG_EQUIV, NULL_RTX))
		  || ! FUNC4 (FUNC8 (note, 0))))
	    newreg = this_rtx;
	}
      if (newcnst && FUNC11 (insn, x, newcnst, alter_jumps))
	{
	  /* If we find a case where we can't fix the retval REG_EQUAL notes
	     match the new register, we either have to abandon this replacement
	     or fix delete_trivially_dead_insns to preserve the setting insn,
	     or make it delete the REG_EUAQL note, and fix up all passes that
	     require the REG_EQUAL note there.  */
	  bool adjusted;

	  adjusted = FUNC9 (x, newcnst, insn, libcall_sp);
	  FUNC15 (adjusted);
	  
	  if (dump_file != NULL)
	    {
	      FUNC14 (dump_file, "LOCAL CONST-PROP: Replacing reg %d in ",
		       FUNC6 (x));
	      FUNC14 (dump_file, "insn %d with constant ",
		       FUNC3 (insn));
	      FUNC17 (dump_file, newcnst);
	      FUNC14 (dump_file, "\n");
	    }
	  local_const_prop_count++;
	  return true;
	}
      else if (newreg && newreg != x && FUNC18 (x, newreg, insn))
	{
	  FUNC9 (x, newreg, insn, libcall_sp);
	  if (dump_file != NULL)
	    {
	      FUNC14 (dump_file,
		       "LOCAL COPY-PROP: Replacing reg %d in insn %d",
		       FUNC6 (x), FUNC3 (insn));
	      FUNC14 (dump_file, " with reg %d\n", FUNC6 (newreg));
	    }
	  local_copy_prop_count++;
	  return true;
	}
    }
  return false;
}