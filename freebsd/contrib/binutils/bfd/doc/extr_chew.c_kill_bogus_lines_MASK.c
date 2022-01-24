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
 char FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/ * tos ; 

__attribute__((used)) static void
FUNC5 ()
{
  int sl;

  int idx = 0;
  int c;
  int dot = 0;

  string_type out;
  FUNC3 (&out);
  /* Drop leading nl.  */
  while (FUNC0 (tos, idx) == '\n')
    {
      idx++;
    }
  c = idx;

  /* If the first char is a '.' prepend a newline so that it is
     recognized properly later.  */
  if (FUNC0 (tos, idx) == '.')
    FUNC1 (&out, '\n');

  /* Find the last char.  */
  while (FUNC0 (tos, idx))
    {
      idx++;
    }

  /* Find the last non white before the nl.  */
  idx--;

  while (idx && FUNC4 ((unsigned char) FUNC0 (tos, idx)))
    idx--;
  idx++;

  /* Copy buffer upto last char, but blank lines before and after
     dots don't count.  */
  sl = 1;

  while (c < idx)
    {
      if (FUNC0 (tos, c) == '\n'
	  && FUNC0 (tos, c + 1) == '\n'
	  && FUNC0 (tos, c + 2) == '.')
	{
	  /* Ignore two newlines before a dot.  */
	  c++;
	}
      else if (FUNC0 (tos, c) == '.' && sl)
	{
	  /* remember that this line started with a dot.  */
	  dot = 2;
	}
      else if (FUNC0 (tos, c) == '\n'
	       && FUNC0 (tos, c + 1) == '\n'
	       && dot)
	{
	  c++;
	  /* Ignore two newlines when last line was dot.  */
	}

      FUNC1 (&out, FUNC0 (tos, c));
      if (FUNC0 (tos, c) == '\n')
	{
	  sl = 1;

	  if (dot == 2)
	    dot = 1;
	  else
	    dot = 0;
	}
      else
	sl = 0;

      c++;

    }

  /* Append nl.  */
  FUNC1 (&out, '\n');
  pc++;
  FUNC2 (tos);
  *tos = out;

}