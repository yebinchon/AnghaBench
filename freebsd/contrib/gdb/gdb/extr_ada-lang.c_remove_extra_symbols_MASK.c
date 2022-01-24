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
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct symbol*) ; 
 scalar_t__ LOC_STATIC ; 
 scalar_t__ FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*) ; 
 scalar_t__ FUNC4 (struct symbol*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (struct symbol **syms, struct block **blocks, int nsyms)
{
  int i, j;

  i = 0;
  while (i < nsyms)
    {
      if (FUNC1 (syms[i]) != NULL
	  && FUNC2 (syms[i]) == LOC_STATIC
	  && FUNC5 (FUNC3 (syms[i])))
	{
	  for (j = 0; j < nsyms; j += 1)
	    {
	      if (i != j
		  && FUNC1 (syms[j]) != NULL
		  && FUNC0 (FUNC1 (syms[i]), FUNC1 (syms[j]))
		  && FUNC2 (syms[i]) == FUNC2 (syms[j])
		  && FUNC4 (syms[i])
		  == FUNC4 (syms[j]))
		{
		  int k;
		  for (k = i + 1; k < nsyms; k += 1)
		    {
		      syms[k - 1] = syms[k];
		      blocks[k - 1] = blocks[k];
		    }
		  nsyms -= 1;
		  goto NextSymbol;
		}
	    }
	}
      i += 1;
    NextSymbol:
      ;
    }
  return nsyms;
}