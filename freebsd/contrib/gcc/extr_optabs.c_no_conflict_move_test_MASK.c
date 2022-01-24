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
struct no_conflict_data {int must_stay; scalar_t__ insn; scalar_t__ first; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USE ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC10 (rtx dest, rtx set, void *p0)
{
  struct no_conflict_data *p= p0;

  /* If this inns directly contributes to setting the target, it must stay.  */
  if (FUNC8 (p->target, dest))
    p->must_stay = true;
  /* If we haven't committed to keeping any other insns in the list yet,
     there is nothing more to check.  */
  else if (p->insn == p->first)
    return;
  /* If this insn sets / clobbers a register that feeds one of the insns
     already in the list, this insn has to stay too.  */
  else if (FUNC8 (dest, FUNC2 (p->first))
	   || (FUNC0 (p->first) && (FUNC5 (p->first, USE, dest)))
	   || FUNC9 (dest, p->first, p->insn)
	   /* Likewise if this insn depends on a register set by a previous
	      insn in the list, or if it sets a result (presumably a hard
	      register) that is set or clobbered by a previous insn.
	      N.B. the modified_*_p (SET_DEST...) tests applied to a MEM
	      SET_DEST perform the former check on the address, and the latter
	      check on the MEM.  */
	   || (FUNC1 (set) == SET
	       && (FUNC7 (FUNC4 (set), p->first)
		   || FUNC7 (FUNC3 (set), p->first)
		   || FUNC6 (FUNC4 (set), p->first, p->insn)
		   || FUNC6 (FUNC3 (set), p->first, p->insn))))
    p->must_stay = true;
}