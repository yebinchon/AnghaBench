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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__* input_line_pointer ; 
 scalar_t__* is_end_of_line ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void
FUNC6 (void)
{
  FUNC1 ();
  if (is_end_of_line[(unsigned char) *input_line_pointer])
    input_line_pointer++;
  else
    {
      if (FUNC0 (*input_line_pointer))
	FUNC3 (FUNC2("junk at end of line, first unrecognized character is `%c'"),
		 *input_line_pointer);
      else
	FUNC3 (FUNC2("junk at end of line, first unrecognized character valued 0x%x"),
		 *input_line_pointer);
      FUNC4 ();
    }
  
  /* Return pointing just after end-of-line.  */
  FUNC5 (is_end_of_line[(unsigned char) input_line_pointer[-1]]);
}