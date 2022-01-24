#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct change {scalar_t__ line0; scalar_t__ deleted; scalar_t__ inserted; struct change* link; } ;
typedef  scalar_t__ lin ;
struct TYPE_5__ {scalar_t__ fastmap; } ;
struct TYPE_4__ {scalar_t__ prefix_lines; scalar_t__ valid_lines; int /*<<< orphan*/ * linbuf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct change*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ context ; 
 TYPE_1__* files ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ function_regexp ; 
 scalar_t__ initial_tab ; 
 int /*<<< orphan*/ * outfile ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (struct change *hunk)
{
  lin first0, last0, first1, last1;
  lin i, j, k;
  struct change *next;
  char const *function;
  FILE *out;

  /* Determine range of line numbers involved in each file.  */

  if (! FUNC1 (hunk, &first0, &last0, &first1, &last1))
    return;

  /* Include a context's width before and after.  */

  i = - files[0].prefix_lines;
  first0 = FUNC0 (first0 - context, i);
  first1 = FUNC0 (first1 - context, i);
  if (last0 < files[0].valid_lines - context)
    last0 += context;
  else
    last0 = files[0].valid_lines - 1;
  if (last1 < files[1].valid_lines - context)
    last1 += context;
  else
    last1 = files[1].valid_lines - 1;

  /* If desired, find the preceding function definition line in file 0.  */
  function = 0;
  if (function_regexp.fastmap)
    function = FUNC3 (files[0].linbuf, first0);

  FUNC2 ();
  out = outfile;

  FUNC4 (out, "@@ -");
  FUNC7 (&files[0], first0, last0);
  FUNC4 (out, " +");
  FUNC7 (&files[1], first1, last1);
  FUNC4 (out, " @@");

  if (function)
    FUNC6 (out, function);

  FUNC8 ('\n', out);

  next = hunk;
  i = first0;
  j = first1;

  while (i <= last0 || j <= last1)
    {

      /* If the line isn't a difference, output the context from file 0. */

      if (!next || i < next->line0)
	{
	  FUNC8 (initial_tab ? '\t' : ' ', out);
	  FUNC5 (0, &files[0].linbuf[i++]);
	  j++;
	}
      else
	{
	  /* For each difference, first output the deleted part. */

	  k = next->deleted;
	  while (k--)
	    {
	      FUNC8 ('-', out);
	      if (initial_tab)
		FUNC8 ('\t', out);
	      FUNC5 (0, &files[0].linbuf[i++]);
	    }

	  /* Then output the inserted part. */

	  k = next->inserted;
	  while (k--)
	    {
	      FUNC8 ('+', out);
	      if (initial_tab)
		FUNC8 ('\t', out);
	      FUNC5 (0, &files[1].linbuf[j++]);
	    }

	  /* We're done with this hunk, so on to the next! */

	  next = next->link;
	}
    }
}