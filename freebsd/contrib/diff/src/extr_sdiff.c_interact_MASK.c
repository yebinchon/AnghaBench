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
typedef  scalar_t__ uintmax_t ;
struct line_filter {int dummy; } ;
typedef  scalar_t__ lin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct line_filter*,char const*,scalar_t__,scalar_t__,struct line_filter*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct line_filter*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct line_filter*,scalar_t__) ; 
 int FUNC6 (struct line_filter*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC8 (char*,char**,int) ; 
 int /*<<< orphan*/  suppress_common_lines ; 

__attribute__((used)) static bool
FUNC9 (struct line_filter *diff,
	  struct line_filter *left, char const *lname,
	  struct line_filter *right, char const *rname,
	  FILE *outfile)
{
  lin lline = 1, rline = 1;

  for (;;)
    {
      char diff_help[256];
      int snarfed = FUNC6 (diff, diff_help, sizeof diff_help);

      if (snarfed <= 0)
	return snarfed != 0;

      FUNC1 ();

      if (diff_help[0] == ' ')
	FUNC7 (diff_help + 1);
      else
	{
	  char *numend;
	  uintmax_t val;
	  lin llen, rlen, lenmax;
	  errno = 0;
	  llen = val = FUNC8 (diff_help + 1, &numend, 10);
	  if (llen < 0 || llen != val || errno || *numend != ',')
	    FUNC3 (diff_help);
	  rlen = val = FUNC8 (numend + 1, &numend, 10);
	  if (rlen < 0 || rlen != val || errno || *numend)
	    FUNC3 (diff_help);

	  lenmax = FUNC0 (llen, rlen);

	  switch (diff_help[0])
	    {
	    case 'i':
	      if (suppress_common_lines)
		FUNC5 (diff, lenmax);
	      else
		FUNC4 (diff, lenmax, stdout);

	      FUNC4 (left, llen, outfile);
	      FUNC5 (right, rlen);
	      break;

	    case 'c':
	      FUNC4 (diff, lenmax, stdout);
	      if (! FUNC2 (left, lname, lline, llen,
			  right, rname, rline, rlen,
			  outfile))
		return false;
	      break;

	    default:
	      FUNC3 (diff_help);
	    }

	  lline += llen;
	  rline += rlen;
	}
    }
}