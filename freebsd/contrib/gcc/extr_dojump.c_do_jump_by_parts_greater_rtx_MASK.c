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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GT ; 
 int /*<<< orphan*/  NE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static void
FUNC6 (enum machine_mode mode, int unsignedp, rtx op0,
			      rtx op1, rtx if_false_label, rtx if_true_label)
{
  int nwords = (FUNC0 (mode) / UNITS_PER_WORD);
  rtx drop_through_label = 0;
  int i;

  if (! if_true_label || ! if_false_label)
    drop_through_label = FUNC4 ();
  if (! if_true_label)
    if_true_label = drop_through_label;
  if (! if_false_label)
    if_false_label = drop_through_label;

  /* Compare a word at a time, high order first.  */
  for (i = 0; i < nwords; i++)
    {
      rtx op0_word, op1_word;

      if (WORDS_BIG_ENDIAN)
        {
          op0_word = FUNC5 (op0, i, mode);
          op1_word = FUNC5 (op1, i, mode);
        }
      else
        {
          op0_word = FUNC5 (op0, nwords - 1 - i, mode);
          op1_word = FUNC5 (op1, nwords - 1 - i, mode);
        }

      /* All but high-order word must be compared as unsigned.  */
      FUNC1 (op0_word, op1_word, GT,
                               (unsignedp || i > 0), word_mode, NULL_RTX,
                               NULL_RTX, if_true_label);

      /* Consider lower words only if these are equal.  */
      FUNC1 (op0_word, op1_word, NE, unsignedp, word_mode,
                               NULL_RTX, NULL_RTX, if_false_label);
    }

  if (if_false_label)
    FUNC2 (if_false_label);
  if (drop_through_label)
    FUNC3 (drop_through_label);
}