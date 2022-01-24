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
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int NO_PARTITION ; 
 int TPA_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void 
FUNC7 (tpa_p tpa, conflict_graph graph,
			var_map map, bitmap vec, tree var)
{ 
  int p, y, first;
  p = FUNC6 (map, var);
  if (p != NO_PARTITION)
    { 
      FUNC1 (vec, p);
      first = FUNC3 (tpa, p);
      /* If find returns nothing, this object isn't interesting.  */
      if (first == TPA_NONE)
        return;
      /* Only add interferences between objects in the same list.  */
      for (y = FUNC4 (tpa, first);
	   y != TPA_NONE;
	   y = FUNC5 (tpa, y))
	{
	  if (FUNC0 (vec, y))
	    FUNC2 (graph, p, y);
	}
    }
}