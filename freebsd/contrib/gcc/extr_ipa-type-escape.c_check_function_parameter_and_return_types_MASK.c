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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EXPOSED_PARAMETER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static void 
FUNC7 (tree fn, bool escapes) 
{
  tree arg;
  
  if (FUNC4 (FUNC2 (fn)))
    {
      for (arg = FUNC4 (FUNC2 (fn));
	   arg && FUNC3 (arg) != void_type_node;
	   arg = FUNC1 (arg))
	{
	  tree type = FUNC5 (FUNC3 (arg), false, false);
	  if (escapes)
	    FUNC6 (type, EXPOSED_PARAMETER);
	}
    }
  else
    {
      /* FIXME - According to Geoff Keating, we should never have to
	 do this; the front ends should always process the arg list
	 from the TYPE_ARG_LIST. However, Geoff is wrong, this code
	 does seem to be live.  */

      for (arg = FUNC0 (fn); arg; arg = FUNC1 (arg))
	{
	  tree type = FUNC5 (FUNC2 (arg), false, false);
	  if (escapes)
	    FUNC6 (type, EXPOSED_PARAMETER);
	}
    }
  if (escapes)
    {
      tree type = FUNC5 (FUNC2 (FUNC2 (fn)), false, false);
      FUNC6 (type, EXPOSED_PARAMETER); 
    }
}