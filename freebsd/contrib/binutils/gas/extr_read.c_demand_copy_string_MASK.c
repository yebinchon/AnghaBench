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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* input_line_pointer ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  notes ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

char *
FUNC8 (int *lenP)
{
  register unsigned int c;
  register int len;
  char *retval;

  len = 0;
  FUNC0 ();
  if (*input_line_pointer == '\"')
    {
      input_line_pointer++;	/* Skip opening quote.  */

      while (FUNC4 (c = FUNC5 ()))
	{
	  FUNC6 (&notes, c);
	  len++;
	}
      /* JF this next line is so demand_copy_C_string will return a
	 null terminated string.  */
      FUNC6 (&notes, '\0');
      retval = FUNC7 (&notes);
    }
  else
    {
      FUNC2 (FUNC1("missing string"));
      retval = NULL;
      FUNC3 ();
    }
  *lenP = len;
  return (retval);
}