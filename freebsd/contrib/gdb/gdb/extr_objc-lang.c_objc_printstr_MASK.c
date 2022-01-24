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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 scalar_t__ inspect_it ; 
 int /*<<< orphan*/  FUNC2 (char,struct ui_file*,char) ; 
 int /*<<< orphan*/  FUNC3 (char,struct ui_file*) ; 
 unsigned int print_max ; 
 unsigned int repeat_count_threshold ; 

__attribute__((used)) static void
FUNC4 (struct ui_file *stream, char *string, 
	       unsigned int length, int width, int force_ellipses)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;

  /* If the string was not truncated due to `set print elements', and
     the last byte of it is a null, we don't print that, in
     traditional C style.  */
  if ((!force_ellipses) && length > 0 && string[length-1] == '\0')
    length--;

  if (length == 0)
    {
      FUNC1 ("\"\"", stream);
      return;
    }

  for (i = 0; i < length && things_printed < print_max; ++i)
    {
      /* Position of the character we are examining to see whether it
	 is repeated.  */
      unsigned int rep1;
      /* Number of repetitions we have detected so far.  */
      unsigned int reps;

      QUIT;

      if (need_comma)
	{
	  FUNC1 (", ", stream);
	  need_comma = 0;
	}

      rep1 = i + 1;
      reps = 1;
      while (rep1 < length && string[rep1] == string[i])
	{
	  ++rep1;
	  ++reps;
	}

      if (reps > repeat_count_threshold)
	{
	  if (in_quotes)
	    {
	      if (inspect_it)
		FUNC1 ("\\\", ", stream);
	      else
		FUNC1 ("\", ", stream);
	      in_quotes = 0;
	    }
	  FUNC3 (string[i], stream);
	  FUNC0 (stream, " <repeats %u times>", reps);
	  i = rep1 - 1;
	  things_printed += repeat_count_threshold;
	  need_comma = 1;
	}
      else
	{
	  if (!in_quotes)
	    {
	      if (inspect_it)
		FUNC1 ("\\\"", stream);
	      else
		FUNC1 ("\"", stream);
	      in_quotes = 1;
	    }
	  FUNC2 (string[i], stream, '"');
	  ++things_printed;
	}
    }

  /* Terminate the quotes if necessary.  */
  if (in_quotes)
    {
      if (inspect_it)
	FUNC1 ("\\\"", stream);
      else
	FUNC1 ("\"", stream);
    }

  if (force_ellipses || i < length)
    FUNC1 ("...", stream);
}