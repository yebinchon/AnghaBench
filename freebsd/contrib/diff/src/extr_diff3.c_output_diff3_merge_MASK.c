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
typedef  scalar_t__ lin ;
typedef  enum diff_type { ____Placeholder_diff_type } diff_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t DIFF_1ST ; 
#define  DIFF_2ND 130 
#define  DIFF_3RD 129 
#define  DIFF_ALL 128 
 scalar_t__ FUNC0 (struct diff3_block*,size_t) ; 
 scalar_t__ FUNC1 (struct diff3_block*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct diff3_block*,int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct diff3_block*,int const,scalar_t__) ; 
 int EOF ; 
 size_t FILE0 ; 
 size_t FILE1 ; 
 size_t FILE2 ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int flagging ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  overlap_only ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ show_2nd ; 
 int /*<<< orphan*/  simple_only ; 

__attribute__((used)) static bool
FUNC13 (FILE *infile, FILE *outputfile, struct diff3_block *diff,
		    int const mapping[3], int const rev_mapping[3],
		    char const *file0, char const *file1, char const *file2)
{
  int c;
  lin i;
  bool conflicts_found = false;
  bool conflict;
  struct diff3_block *b;
  lin linesread = 0;

  for (b = diff; b; b = b->next)
    {
      /* Must do mapping correctly.  */
      enum diff_type type
	= ((b->correspond == DIFF_ALL)
	   ? DIFF_ALL
	   : DIFF_1ST + rev_mapping[b->correspond - DIFF_1ST]);
      char const *format_2nd = "<<<<<<< %s\n";

      /* If we aren't supposed to do this output block, skip it.  */
      switch (type)
	{
	default: continue;
	case DIFF_2ND: if (!show_2nd) continue; conflict = true; break;
	case DIFF_3RD: if (overlap_only) continue; conflict = false; break;
	case DIFF_ALL: if (simple_only) continue; conflict = flagging;
	  format_2nd = "||||||| %s\n";
	  break;
	}

      /* Copy I lines from file 0.  */
      i = FUNC0 (b, FILE0) - linesread - 1;
      linesread += i;
      while (0 <= --i)
	do
	  {
	    c = FUNC10 (infile);
	    if (c == EOF)
	      {
		if (FUNC7 (infile))
		  FUNC11 (FUNC4("read failed"));
		else if (FUNC6 (infile))
		  FUNC5 ("input file shrank");
	      }
	    FUNC12 (c, outputfile);
	  }
	while (c != '\n');

      if (conflict)
	{
	  conflicts_found = true;

	  if (type == DIFF_ALL)
	    {
	      /* Put in lines from FILE0 with bracket.  */
	      FUNC8 (outputfile, "<<<<<<< %s\n", file0);
	      for (i = 0;
		   i < FUNC1 (b, mapping[FILE0]);
		   i++)
		FUNC9 (FUNC3 (b, mapping[FILE0], i), sizeof (char),
			FUNC2 (b, mapping[FILE0], i), outputfile);
	    }

	  if (show_2nd)
	    {
	      /* Put in lines from FILE1 with bracket.  */
	      FUNC8 (outputfile, format_2nd, file1);
	      for (i = 0;
		   i < FUNC1 (b, mapping[FILE1]);
		   i++)
		FUNC9 (FUNC3 (b, mapping[FILE1], i), sizeof (char),
			FUNC2 (b, mapping[FILE1], i), outputfile);
	    }

	  FUNC8 (outputfile, "=======\n");
	}

      /* Put in lines from FILE2.  */
      for (i = 0;
	   i < FUNC1 (b, mapping[FILE2]);
	   i++)
	FUNC9 (FUNC3 (b, mapping[FILE2], i), sizeof (char),
		FUNC2 (b, mapping[FILE2], i), outputfile);

      if (conflict)
	FUNC8 (outputfile, ">>>>>>> %s\n", file2);

      /* Skip I lines in file 0.  */
      i = FUNC1 (b, FILE0);
      linesread += i;
      while (0 <= --i)
	while ((c = FUNC10 (infile)) != '\n')
	  if (c == EOF)
	    {
	      if (FUNC7 (infile))
		FUNC11 (FUNC4("read failed"));
	      else if (FUNC6 (infile))
		{
		  if (i || b->next)
		    FUNC5 ("input file shrank");
		  return conflicts_found;
		}
	    }
    }
  /* Copy rest of common file.  */
  while ((c = FUNC10 (infile)) != EOF || !(FUNC7 (infile) | FUNC6 (infile)))
    FUNC12 (c, outputfile);
  return conflicts_found;
}