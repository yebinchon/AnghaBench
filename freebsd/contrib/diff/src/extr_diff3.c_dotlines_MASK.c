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
struct diff3_block {int dummy; } ;
typedef  scalar_t__ lin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct diff3_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct diff3_block*,int,scalar_t__) ; 
 char* FUNC2 (struct diff3_block*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5 (FILE *outputfile, struct diff3_block *b, int filenum)
{
  lin i;
  bool leading_dot = false;

  for (i = 0;
       i < FUNC0 (b, filenum);
       i++)
    {
      char *line = FUNC2 (b, filenum, i);
      if (line[0] == '.')
	{
	  leading_dot = true;
	  FUNC3 (outputfile, ".");
	}
      FUNC4 (line, sizeof (char),
	      FUNC1 (b, filenum, i), outputfile);
    }

  return leading_dot;
}