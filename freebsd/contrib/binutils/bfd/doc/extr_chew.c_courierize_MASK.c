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
typedef  int /*<<< orphan*/  string_type ;

/* Variables and functions */
 char FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  tos ; 

__attribute__((used)) static void
FUNC6 ()
{
  string_type out;
  unsigned int idx = 0;
  int command = 0;

  FUNC3 (&out);

  while (FUNC0 (tos, idx))
    {
      if (FUNC0 (tos, idx) == '\n'
	  && (FUNC0 (tos, idx +1 ) == '.'
	      || FUNC0 (tos, idx + 1) == '|'))
	{
	  FUNC2 (&out, "\n@example\n");
	  do
	    {
	      idx += 2;

	      while (FUNC0 (tos, idx) && FUNC0 (tos, idx) != '\n')
		{
		  if (command > 1)
		    {
		      /* We are inside {} parameters of some command;
			 Just pass through until matching brace.  */
		      if (FUNC0 (tos, idx) == '{')
			++command;
		      else if (FUNC0 (tos, idx) == '}')
			--command;
		    }
		  else if (command != 0)
		    {
		      if (FUNC0 (tos, idx) == '{')
			++command;
		      else if (!FUNC4 ((unsigned char) FUNC0 (tos, idx)))
			--command;
		    }
		  else if (FUNC0 (tos, idx) == '@'
			   && FUNC4 ((unsigned char) FUNC0 (tos, idx + 1)))
		    {
		      ++command;
		    }
		  else if (FUNC0 (tos, idx) == '{' && FUNC0 (tos, idx + 1) == '*')
		    {
		      FUNC2 (&out, "/*");
		      idx += 2;
		      continue;
		    }
		  else if (FUNC0 (tos, idx) == '*' && FUNC0 (tos, idx + 1) == '}')
		    {
		      FUNC2 (&out, "*/");
		      idx += 2;
		      continue;
		    }
		  else if (FUNC0 (tos, idx) == '{'
			   || FUNC0 (tos, idx) == '}')
		    {
		      FUNC1 (&out, '@');
		    }

		  FUNC1 (&out, FUNC0 (tos, idx));
		  idx++;
		}
	      FUNC1 (&out, '\n');
	    }
	  while (FUNC0 (tos, idx) == '\n'
		 && ((FUNC0 (tos, idx + 1) == '.')
		     || (FUNC0 (tos, idx + 1) == '|')))
	    ;
	  FUNC2 (&out, "@end example");
	}
      else
	{
	  FUNC1 (&out, FUNC0 (tos, idx));
	  idx++;
	}
    }

  FUNC5 (tos, &out);
  pc++;
}