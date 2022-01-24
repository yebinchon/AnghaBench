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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int DImode ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_BIG_ENDIAN ; 
 unsigned int UNITS_PER_WORD ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  word_mode ; 

rtx
FUNC10 (rtx op, int high_p)
{
  unsigned int byte;
  enum machine_mode mode;

  mode = FUNC2 (op);
  if (mode == VOIDmode)
    mode = DImode;

  if (TARGET_BIG_ENDIAN ? !high_p : high_p)
    byte = UNITS_PER_WORD;
  else
    byte = 0;

  if (FUNC5 (op))
    {
      if (FUNC1 (FUNC4 (op)))
	return FUNC7 (word_mode, high_p ? FUNC4 (op) + 1 : FUNC4 (op));
      if (FUNC0 (FUNC4 (op)))
	return FUNC7 (word_mode, high_p ? FUNC4 (op) : FUNC4 (op) + 1);
    }

  if (FUNC3 (op))
    return FUNC8 (FUNC6 (op, word_mode, byte));

  return FUNC9 (word_mode, op, mode, byte);
}