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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* input_line_pointer ; 

void
FUNC7 (int equiv)
{
  char *name;
  char delim;
  char *end_name;

  /* Especial apologies for the random logic:
     this just grew, and could be parsed much more simply!
     Dean in haste.  */
  name = input_line_pointer;
  delim = FUNC5 ();
  end_name = input_line_pointer;
  *end_name = delim;

  if (name == end_name)
    {
      FUNC2 (FUNC1("expected symbol name"));
      FUNC6 ();
      return;
    }

  FUNC0 ();

  if (*input_line_pointer != ',')
    {
      *end_name = 0;
      FUNC2 (FUNC1("expected comma after \"%s\""), name);
      *end_name = delim;
      FUNC6 ();
      return;
    }

  input_line_pointer++;
  *end_name = 0;

  FUNC3 (name, equiv);
  *end_name = delim;

  FUNC4 ();
}