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
typedef  scalar_t__* lambda_vector ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2 (FILE * outfile, lambda_vector expr, int size,
			 char start)
{
  int i;
  bool first = true;
  for (i = 0; i < size; i++)
    {
      if (expr[i] != 0)
	{
	  if (first)
	    {
	      if (expr[i] < 0)
		FUNC1 (outfile, "-");
	      first = false;
	    }
	  else if (expr[i] > 0)
	    FUNC1 (outfile, " + ");
	  else
	    FUNC1 (outfile, " - ");
	  if (FUNC0 (expr[i]) == 1)
	    FUNC1 (outfile, "%c", start + i);
	  else
	    FUNC1 (outfile, "%d%c", FUNC0 (expr[i]), start + i);
	}
    }
}