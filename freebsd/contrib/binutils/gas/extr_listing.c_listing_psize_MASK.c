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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 () ; 
 char* input_line_pointer ; 
 int paper_height ; 
 void* paper_width ; 

void
FUNC4 (int width_only)
{
  if (! width_only)
    {
      paper_height = FUNC3 ();

      if (paper_height < 0 || paper_height > 1000)
	{
	  paper_height = 0;
	  FUNC1 (FUNC0("strange paper height, set to no form"));
	}

      if (*input_line_pointer != ',')
	{
	  FUNC2 ();
	  return;
	}

      ++input_line_pointer;
    }

  paper_width = FUNC3 ();

  FUNC2 ();
}