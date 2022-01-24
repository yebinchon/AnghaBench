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
struct diff3_block {size_t correspond; struct diff3_block* next; } ;
typedef  enum diff_type { ____Placeholder_diff_type } diff_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t DIFF_1ST ; 
#define  DIFF_2ND 130 
#define  DIFF_3RD 129 
#define  DIFF_ALL 128 
 long FUNC0 (struct diff3_block*,int const) ; 
 long FUNC1 (struct diff3_block*,int const) ; 
 scalar_t__ FUNC2 (struct diff3_block*,int const) ; 
 size_t FILE0 ; 
 size_t FILE1 ; 
 size_t FILE2 ; 
 int FUNC3 (int /*<<< orphan*/ *,struct diff3_block*,int const) ; 
 scalar_t__ finalwrite ; 
 int flagging ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  overlap_only ; 
 struct diff3_block* FUNC5 (struct diff3_block*) ; 
 scalar_t__ show_2nd ; 
 int /*<<< orphan*/  simple_only ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,long,scalar_t__) ; 

__attribute__((used)) static bool
FUNC7 (FILE *outputfile, struct diff3_block *diff,
		       int const mapping[3], int const rev_mapping[3],
		       char const *file0, char const *file1, char const *file2)
{
  bool leading_dot;
  bool conflicts_found = false;
  bool conflict;
  struct diff3_block *b;

  for (b = FUNC5 (diff); b; b = b->next)
    {
      /* Must do mapping correctly.  */
      enum diff_type type
	= (b->correspond == DIFF_ALL
	   ? DIFF_ALL
	   : DIFF_1ST + rev_mapping[b->correspond - DIFF_1ST]);

      long int low0, high0;

      /* If we aren't supposed to do this output block, skip it.  */
      switch (type)
	{
	default: continue;
	case DIFF_2ND: if (!show_2nd) continue; conflict = true; break;
	case DIFF_3RD: if (overlap_only) continue; conflict = false; break;
	case DIFF_ALL: if (simple_only) continue; conflict = flagging; break;
	}

      low0 = FUNC1 (b, mapping[FILE0]);
      high0 = FUNC0 (b, mapping[FILE0]);

      if (conflict)
	{
	  conflicts_found = true;


	  /* Mark end of conflict.  */

	  FUNC4 (outputfile, "%lda\n", high0);
	  leading_dot = false;
	  if (type == DIFF_ALL)
	    {
	      if (show_2nd)
		{
		  /* Append lines from FILE1.  */
		  FUNC4 (outputfile, "||||||| %s\n", file1);
		  leading_dot = FUNC3 (outputfile, b, mapping[FILE1]);
		}
	      /* Append lines from FILE2.  */
	      FUNC4 (outputfile, "=======\n");
	      leading_dot |= FUNC3 (outputfile, b, mapping[FILE2]);
	    }
	  FUNC4 (outputfile, ">>>>>>> %s\n", file2);
	  FUNC6 (outputfile, leading_dot, high0 + 2,
		      (FUNC2 (b, mapping[FILE1])
		       + FUNC2 (b, mapping[FILE2]) + 1));


	  /* Mark start of conflict.  */

	  FUNC4 (outputfile, "%lda\n<<<<<<< %s\n", low0 - 1,
		   type == DIFF_ALL ? file0 : file1);
	  leading_dot = false;
	  if (type == DIFF_2ND)
	    {
	      /* Prepend lines from FILE1.  */
	      leading_dot = FUNC3 (outputfile, b, mapping[FILE1]);
	      FUNC4 (outputfile, "=======\n");
	    }
	  FUNC6 (outputfile, leading_dot, low0 + 1,
		      FUNC2 (b, mapping[FILE1]));
	}
      else if (FUNC2 (b, mapping[FILE2]) == 0)
	/* Write out a delete */
	{
	  if (low0 == high0)
	    FUNC4 (outputfile, "%ldd\n", low0);
	  else
	    FUNC4 (outputfile, "%ld,%ldd\n", low0, high0);
	}
      else
	/* Write out an add or change */
	{
	  switch (high0 - low0)
	    {
	    case -1:
	      FUNC4 (outputfile, "%lda\n", high0);
	      break;
	    case 0:
	      FUNC4 (outputfile, "%ldc\n", high0);
	      break;
	    default:
	      FUNC4 (outputfile, "%ld,%ldc\n", low0, high0);
	      break;
	    }

	  FUNC6 (outputfile, FUNC3 (outputfile, b, mapping[FILE2]),
		      low0, FUNC2 (b, mapping[FILE2]));
	}
    }
  if (finalwrite) FUNC4 (outputfile, "w\nq\n");
  return conflicts_found;
}