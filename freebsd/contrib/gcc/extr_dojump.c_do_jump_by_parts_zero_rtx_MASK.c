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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ior_optab ; 
 scalar_t__ FUNC9 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static void
FUNC10 (enum machine_mode mode, rtx op0,
			   rtx if_false_label, rtx if_true_label)
{
  int nwords = FUNC1 (mode) / UNITS_PER_WORD;
  rtx part;
  int i;
  rtx drop_through_label = 0;

  /* The fastest way of doing this comparison on almost any machine is to
     "or" all the words and compare the result.  If all have to be loaded
     from memory and this is a very wide item, it's possible this may
     be slower, but that's highly unlikely.  */

  part = FUNC8 (word_mode);
  FUNC5 (part, FUNC9 (op0, 0, FUNC0 (op0)));
  for (i = 1; i < nwords && part != 0; i++)
    part = FUNC6 (word_mode, ior_optab, part,
                         FUNC9 (op0, i, FUNC0 (op0)),
                         part, 1, OPTAB_WIDEN);

  if (part != 0)
    {
      FUNC2 (part, const0_rtx, EQ, 1, word_mode,
                               NULL_RTX, if_false_label, if_true_label);

      return;
    }

  /* If we couldn't do the "or" simply, do this with a series of compares.  */
  if (! if_false_label)
    drop_through_label = if_false_label = FUNC7 ();

  for (i = 0; i < nwords; i++)
    FUNC2 (FUNC9 (op0, i, FUNC0 (op0)),
                             const0_rtx, EQ, 1, word_mode, NULL_RTX,
                             if_false_label, NULL_RTX);

  if (if_true_label)
    FUNC3 (if_true_label);

  if (drop_through_label)
    FUNC4 (drop_through_label);
}