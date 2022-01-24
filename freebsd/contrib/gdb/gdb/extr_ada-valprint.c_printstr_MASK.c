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
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ui_file*,char,int) ; 
 scalar_t__ FUNC1 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ui_file*) ; 
 scalar_t__ inspect_it ; 
 unsigned int print_max ; 
 unsigned int repeat_count_threshold ; 

__attribute__((used)) static void
FUNC4 (struct ui_file *stream, char *string, unsigned int length,
	  int force_ellipses, int type_len)
{
  unsigned int i;
  unsigned int things_printed = 0;
  int in_quotes = 0;
  int need_comma = 0;

  if (length == 0)
    {
      FUNC3 ("\"\"", stream);
      return;
    }

  for (i = 0; i < length && things_printed < print_max; i += 1)
    {
      /* Position of the character we are examining
         to see whether it is repeated.  */
      unsigned int rep1;
      /* Number of repetitions we have detected so far.  */
      unsigned int reps;

      QUIT;

      if (need_comma)
	{
	  FUNC3 (", ", stream);
	  need_comma = 0;
	}

      rep1 = i + 1;
      reps = 1;
      while (rep1 < length &&
	     FUNC1 (string, rep1, type_len) == FUNC1 (string, i,
							  type_len))
	{
	  rep1 += 1;
	  reps += 1;
	}

      if (reps > repeat_count_threshold)
	{
	  if (in_quotes)
	    {
	      if (inspect_it)
		FUNC3 ("\\\", ", stream);
	      else
		FUNC3 ("\", ", stream);
	      in_quotes = 0;
	    }
	  FUNC3 ("'", stream);
	  FUNC0 (FUNC1 (string, i, type_len), stream, '\'',
			 type_len);
	  FUNC3 ("'", stream);
	  FUNC2 (stream, " <repeats %u times>", reps);
	  i = rep1 - 1;
	  things_printed += repeat_count_threshold;
	  need_comma = 1;
	}
      else
	{
	  if (!in_quotes)
	    {
	      if (inspect_it)
		FUNC3 ("\\\"", stream);
	      else
		FUNC3 ("\"", stream);
	      in_quotes = 1;
	    }
	  FUNC0 (FUNC1 (string, i, type_len), stream, '"',
			 type_len);
	  things_printed += 1;
	}
    }

  /* Terminate the quotes if necessary.  */
  if (in_quotes)
    {
      if (inspect_it)
	FUNC3 ("\\\"", stream);
      else
	FUNC3 ("\"", stream);
    }

  if (force_ellipses || i < length)
    FUNC3 ("...", stream);
}