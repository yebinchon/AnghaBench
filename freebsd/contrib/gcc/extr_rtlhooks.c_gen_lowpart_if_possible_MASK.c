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
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNITS_PER_WORD ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ WORDS_BIG_ENDIAN ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

rtx
FUNC10 (enum machine_mode mode, rtx x)
{
  rtx result = FUNC8 (mode, x);

  if (result)
    return result;
  else if (FUNC3 (x))
    {
      /* This is the only other case we handle.  */
      int offset = 0;
      rtx new;

      if (WORDS_BIG_ENDIAN)
	offset = (FUNC2 (FUNC1 (FUNC0 (x)), UNITS_PER_WORD)
		  - FUNC2 (FUNC1 (mode), UNITS_PER_WORD));
      if (BYTES_BIG_ENDIAN)
	/* Adjust the address so that the address-after-the-data is
	   unchanged.  */
	offset -= (FUNC4 (UNITS_PER_WORD, FUNC1 (mode))
		   - FUNC4 (UNITS_PER_WORD, FUNC1 (FUNC0 (x))));

      new = FUNC6 (x, mode, offset);
      if (! FUNC9 (mode, FUNC5 (new, 0)))
	return 0;

      return new;
    }
  else if (mode != FUNC0 (x) && FUNC0 (x) != VOIDmode)
    return FUNC7 (mode, x);
  else
    return 0;
}