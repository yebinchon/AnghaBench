#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* tpa_p ;
struct TYPE_8__ {int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_SLIM ; 
 int TPA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

void
FUNC9 (FILE *f, tpa_p tpa)
{
  int x, i;

  if (!tpa)
    return;

  for (x = 0; x < FUNC7 (tpa); x++)
    {
      FUNC3 (f, FUNC8 (tpa, x), TDF_SLIM);
      FUNC1 (f, " : (");
      for (i = FUNC5 (tpa, x); 
	   i != TPA_NONE;
	   i = FUNC6 (tpa, i))
	{
	  FUNC1 (f, "(%d)",i);
	  FUNC3 (f, FUNC2 (tpa->map, i), TDF_SLIM);
	  FUNC1 (f, " ");

#ifdef ENABLE_CHECKING
	  if (tpa_find_tree (tpa, i) != x)
	    fprintf (f, "**find tree incorrectly set** ");
#endif

	}
      FUNC1 (f, ")\n");
    }
  FUNC0 (f);
}