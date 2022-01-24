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
 int /*<<< orphan*/  FUNC0 (unsigned long,struct ui_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct ui_file*) ; 
 int /*<<< orphan*/  QUIT ; 
 unsigned long FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct ui_file*) ; 
 scalar_t__ inspect_it ; 
 unsigned int print_max ; 
 unsigned int repeat_count_threshold ; 

void
FUNC5 (struct ui_file *stream, char *string, unsigned int length,
	    int width, int force_ellipses)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;

  /* If the string was not truncated due to `set print elements', and
     the last byte of it is a null, we don't print that, in traditional C
     style.  */
  if (!force_ellipses
      && length > 0
      && (FUNC2 (string + (length - 1) * width, width)
          == '\0'))
    length--;

  if (length == 0)
    {
      FUNC4 ("\"\"", stream);
      return;
    }

  for (i = 0; i < length && things_printed < print_max; ++i)
    {
      /* Position of the character we are examining
         to see whether it is repeated.  */
      unsigned int rep1;
      /* Number of repetitions we have detected so far.  */
      unsigned int reps;
      unsigned long current_char;

      QUIT;

      if (need_comma)
	{
	  FUNC4 (", ", stream);
	  need_comma = 0;
	}

      current_char = FUNC2 (string + i * width, width);

      rep1 = i + 1;
      reps = 1;
      while (rep1 < length
	     && FUNC2 (string + rep1 * width, width)
	     == current_char)
	{
	  ++rep1;
	  ++reps;
	}

      if (reps > repeat_count_threshold)
	{
	  if (in_quotes)
	    {
	      if (inspect_it)
		FUNC4 ("\\\", ", stream);
	      else
		FUNC4 ("\", ", stream);
	      in_quotes = 0;
	    }
	  FUNC1 (current_char, stream);
	  FUNC3 (stream, " <repeats %u times>", reps);
	  i = rep1 - 1;
	  things_printed += repeat_count_threshold;
	  need_comma = 1;
	}
      else
	{
	  if (!in_quotes)
	    {
	      if (inspect_it)
		FUNC4 ("\\\"", stream);
	      else
		FUNC4 ("\"", stream);
	      in_quotes = 1;
	    }
	  FUNC0 (current_char, stream, '"');
	  ++things_printed;
	}
    }

  /* Terminate the quotes if necessary.  */
  if (in_quotes)
    {
      if (inspect_it)
	FUNC4 ("\\\"", stream);
      else
	FUNC4 ("\"", stream);
    }

  if (force_ellipses || i < length)
    FUNC4 ("...", stream);
}