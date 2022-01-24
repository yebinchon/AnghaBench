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
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 scalar_t__ SUBREG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int word_mode ; 

__attribute__((used)) static bool
FUNC5 (rtx op, int i)
{
  enum machine_mode innermode, innermostmode;
  int offset;
  if (FUNC0 (op) != SUBREG)
    return false;
  innermode = FUNC1 (op);
  innermostmode = FUNC1 (FUNC4 (op));
  offset = i * UNITS_PER_WORD + FUNC3 (op);
  /* The SUBREG_BYTE represents offset, as if the value were stored in
     memory, except for a paradoxical subreg where we define
     SUBREG_BYTE to be 0; undo this exception as in
     simplify_subreg.  */
  if (FUNC3 (op) == 0
      && FUNC2 (innermostmode) < FUNC2 (innermode))
    {
      int difference = (FUNC2 (innermostmode) - FUNC2 (innermode));
      if (WORDS_BIG_ENDIAN)
	offset += (difference / UNITS_PER_WORD) * UNITS_PER_WORD;
      if (BYTES_BIG_ENDIAN)
	offset += difference % UNITS_PER_WORD;
    }
  if (offset >= FUNC2 (innermostmode)
      || offset <= -FUNC2 (word_mode))
    return true;
  return false;
}