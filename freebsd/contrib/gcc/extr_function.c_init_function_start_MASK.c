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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTE_INSN_DELETED ; 
 int /*<<< orphan*/  OPT_Waggregate_return ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void
FUNC9 (tree subr)
{
  FUNC7 (subr);

  /* Prevent ever trying to delete the first instruction of a
     function.  Also tell final how to output a linenum before the
     function prologue.  Note linenums could be missing, e.g. when
     compiling a Java .class file.  */
  if (! FUNC1 (subr))
    FUNC5 (FUNC3 (subr));

  /* Make sure first insn is a note even if we don't want linenums.
     This makes sure the first insn will never be deleted.
     Also, final expects a note to appear there.  */
  FUNC6 (NOTE_INSN_DELETED);

  /* Warn if this value is an aggregate type,
     regardless of which calling convention we are using for it.  */
  if (FUNC0 (FUNC4 (FUNC2 (subr))))
    FUNC8 (OPT_Waggregate_return, "function returns an aggregate");
}