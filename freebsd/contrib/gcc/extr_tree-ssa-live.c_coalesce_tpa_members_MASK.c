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
typedef  int /*<<< orphan*/  var_map ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  tpa_p ;
typedef  int /*<<< orphan*/  conflict_graph ;
typedef  scalar_t__ coalesce_list_p ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ NO_BEST_COALESCE ; 
 int NO_PARTITION ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int TPA_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13 (tpa_p tpa, conflict_graph graph, var_map map, 
		      coalesce_list_p cl, FILE *debug)
{
  int x, y, z, w;
  tree var, tmp;

  /* Attempt to coalesce any items in a coalesce list.  */
  if (cl)
    {
      while (FUNC4 (cl, &x, &y) != NO_BEST_COALESCE)
        {
	  if (debug)
	    {
	      FUNC2 (debug, "Coalesce list: (%d)", x);
	      FUNC5 (debug, FUNC3 (map, x), TDF_SLIM);
	      FUNC2 (debug, " & (%d)", y);
	      FUNC5 (debug, FUNC3 (map, y), TDF_SLIM);
	    }

	  w = FUNC6 (tpa, x);
	  z = FUNC6 (tpa, y);
	  if (w != z || w == TPA_NONE || z == TPA_NONE)
	    {
	      if (debug)
		{
		  if (w != z)
		    FUNC2 (debug, ": Fail, Non-matching TPA's\n");
		  if (w == TPA_NONE)
		    FUNC2 (debug, ": Fail %d non TPA.\n", x);
		  else
		    FUNC2 (debug, ": Fail %d non TPA.\n", y);
		}
	      continue;
	    }
	  var = FUNC3 (map, x);
	  tmp = FUNC3 (map, y);
	  x = FUNC11 (map, var);
	  y = FUNC11 (map, tmp);
	  if (debug)
	    FUNC2 (debug, " [map: %d, %d] ", x, y);
	  if (x == y)
	    {
	      if (debug)
		FUNC2 (debug, ": Already Coalesced.\n");
	      continue;
	    }
	  if (!FUNC0 (graph, x, y))
	    {
	      z = FUNC12 (map, var, tmp);
	      if (z == NO_PARTITION)
	        {
		  if (debug)
		    FUNC2 (debug, ": Unable to perform partition union.\n");
		  continue;
		}

	      /* z is the new combined partition. We need to remove the other
	         partition from the list. Set x to be that other partition.  */
	      if (z == x)
	        {
		  FUNC1 (graph, x, y);
		  w = FUNC6 (tpa, y);
		  FUNC10 (tpa, w, y);
		}
	      else
	        {
		  FUNC1 (graph, y, x);
		  w = FUNC6 (tpa, x);
		  FUNC10 (tpa, w, x);
		}

	      if (debug)
		FUNC2 (debug, ": Success -> %d\n", z);
	    }
	  else
	    if (debug)
	      FUNC2 (debug, ": Fail due to conflict\n");
	}
      /* If using a coalesce list, don't try to coalesce anything else.  */
      return;
    }

  for (x = 0; x < FUNC9 (tpa); x++)
    {
      while (FUNC7 (tpa, x) != TPA_NONE)
        {
	  int p1, p2;
	  /* Coalesce first partition with anything that doesn't conflict.  */
	  y = FUNC7 (tpa, x);
	  FUNC10 (tpa, x, y);

	  var = FUNC3 (map, y);
	  /* p1 is the partition representative to which y belongs.  */
	  p1 = FUNC11 (map, var);
	  
	  for (z = FUNC8 (tpa, y); 
	       z != TPA_NONE; 
	       z = FUNC8 (tpa, z))
	    {
	      tmp = FUNC3 (map, z);
	      /* p2 is the partition representative to which z belongs.  */
	      p2 = FUNC11 (map, tmp);
	      if (debug)
		{
		  FUNC2 (debug, "Coalesce : ");
		  FUNC5 (debug, var, TDF_SLIM);
		  FUNC2 (debug, " &");
		  FUNC5 (debug, tmp, TDF_SLIM);
		  FUNC2 (debug, "  (%d ,%d)", p1, p2);
		}

	      /* If partitions are already merged, don't check for conflict.  */
	      if (tmp == var)
	        {
		  FUNC10 (tpa, x, z);
		  if (debug)
		    FUNC2 (debug, ": Already coalesced\n");
		}
	      else
		if (!FUNC0 (graph, p1, p2))
		  {
		    int v;
		    if (FUNC6 (tpa, y) == TPA_NONE 
			|| FUNC6 (tpa, z) == TPA_NONE)
		      {
			if (debug)
			  FUNC2 (debug, ": Fail non-TPA member\n");
			continue;
		      }
		    if ((v = FUNC12 (map, var, tmp)) == NO_PARTITION)
		      {
			if (debug)
			  FUNC2 (debug, ": Fail cannot combine partitions\n");
			continue;
		      }

		    FUNC10 (tpa, x, z);
		    if (v == p1)
		      FUNC1 (graph, v, z);
		    else
		      {
			/* Update the first partition's representative.  */
			FUNC1 (graph, v, y);
			p1 = v;
		      }

		    /* The root variable of the partition may be changed
		       now.  */
		    var = FUNC3 (map, p1);

		    if (debug)
		      FUNC2 (debug, ": Success -> %d\n", v);
		  }
		else
		  if (debug)
		    FUNC2 (debug, ": Fail, Conflict\n");
	    }
	}
    }
}