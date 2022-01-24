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
struct diff_block {struct diff_block* next; int /*<<< orphan*/ ** lengths; int /*<<< orphan*/ ** lines; int /*<<< orphan*/ ** ranges; } ;
typedef  size_t lin ;
typedef  enum diff_type { ____Placeholder_diff_type } diff_type ;

/* Variables and functions */
#define  ADD 130 
#define  CHANGE 129 
#define  DELETE 128 
 size_t FUNC0 (struct diff_block*,int) ; 
 int ERROR ; 
 int /*<<< orphan*/  EXIT_TROUBLE ; 
 size_t FUNC1 (int,int) ; 
 size_t PTRDIFF_MAX ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (char**,struct diff_block*) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char const*,char const*,char**) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 void* FUNC12 (size_t) ; 

__attribute__((used)) static struct diff_block *
FUNC13 (char const *filea,
	      char const *fileb,
	      struct diff_block **last_block)
{
  char *diff_contents;
  char *diff_limit;
  char *scan_diff;
  enum diff_type dt;
  lin i;
  struct diff_block *block_list, **block_list_end, *bptr;
  size_t too_many_lines = (PTRDIFF_MAX
			   / FUNC1 (sizeof *bptr->lines[1],
				  sizeof *bptr->lengths[1]));

  diff_limit = FUNC8 (filea, fileb, &diff_contents);
  scan_diff = diff_contents;
  block_list_end = &block_list;
  bptr = 0; /* Pacify `gcc -W'.  */

  while (scan_diff < diff_limit)
    {
      bptr = FUNC12 (sizeof *bptr);
      bptr->lines[0] = bptr->lines[1] = 0;
      bptr->lengths[0] = bptr->lengths[1] = 0;

      dt = FUNC6 (&scan_diff, bptr);
      if (dt == ERROR || *scan_diff != '\n')
	{
	  FUNC5 (stderr, FUNC2("%s: diff failed: "), program_name);
	  do
	    {
	      FUNC7 (*scan_diff, stderr);
	    }
	  while (*scan_diff++ != '\n');
	  FUNC3 (EXIT_TROUBLE);
	}
      scan_diff++;

      /* Force appropriate ranges to be null, if necessary */
      switch (dt)
	{
	case ADD:
	  bptr->ranges[0][0]++;
	  break;
	case DELETE:
	  bptr->ranges[1][0]++;
	  break;
	case CHANGE:
	  break;
	default:
	  FUNC4 ("internal error: invalid diff type in process_diff");
	  break;
	}

      /* Allocate space for the pointers for the lines from filea, and
	 parcel them out among these pointers */
      if (dt != ADD)
	{
	  lin numlines = FUNC0 (bptr, 0);
	  if (too_many_lines <= numlines)
	    FUNC11 ();
	  bptr->lines[0] = FUNC12 (numlines * sizeof *bptr->lines[0]);
	  bptr->lengths[0] = FUNC12 (numlines * sizeof *bptr->lengths[0]);
	  for (i = 0; i < numlines; i++)
	    scan_diff = FUNC9 (scan_diff,
					&(bptr->lines[0][i]),
					&(bptr->lengths[0][i]),
					diff_limit,
					'<');
	}

      /* Get past the separator for changes */
      if (dt == CHANGE)
	{
	  if (FUNC10 (scan_diff, "---\n", 4))
	    FUNC4 ("invalid diff format; invalid change separator");
	  scan_diff += 4;
	}

      /* Allocate space for the pointers for the lines from fileb, and
	 parcel them out among these pointers */
      if (dt != DELETE)
	{
	  lin numlines = FUNC0 (bptr, 1);
	  if (too_many_lines <= numlines)
	    FUNC11 ();
	  bptr->lines[1] = FUNC12 (numlines * sizeof *bptr->lines[1]);
	  bptr->lengths[1] = FUNC12 (numlines * sizeof *bptr->lengths[1]);
	  for (i = 0; i < numlines; i++)
	    scan_diff = FUNC9 (scan_diff,
					&(bptr->lines[1][i]),
					&(bptr->lengths[1][i]),
					diff_limit,
					'>');
	}

      /* Place this block on the blocklist.  */
      *block_list_end = bptr;
      block_list_end = &bptr->next;
    }

  *block_list_end = 0;
  *last_block = bptr;
  return block_list;
}