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
 char* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char) ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (int) ; 

__attribute__((used)) static char *
FUNC9 (void)
{
  char *name;

  FUNC0 ();
  if (*input_line_pointer == '"')
    {
      int dummy;

      name = FUNC3 (&dummy);
      if (name == NULL)
	{
	  FUNC4 ();
	  return NULL;
	}
    }
  else
    {
      char *end = input_line_pointer;

      while (0 == FUNC6 ("\n\t,; ", *end))
	end++;
      if (end == input_line_pointer)
	{
	  FUNC2 (FUNC1("missing name"));
	  FUNC4 ();
	  return NULL;
	}

      name = FUNC8 (end - input_line_pointer + 1);
      FUNC5 (name, input_line_pointer, end - input_line_pointer);
      name[end - input_line_pointer] = '\0';
#ifdef tc_canonicalize_section_name
      name = tc_canonicalize_section_name (name);
#endif
      input_line_pointer = end;
    }
  FUNC0 ();
  return name;
}