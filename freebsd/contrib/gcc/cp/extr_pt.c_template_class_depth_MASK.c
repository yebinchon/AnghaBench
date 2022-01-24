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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11 (tree type)
{
  int depth;

  for (depth = 0;
       type && FUNC8 (type) != NAMESPACE_DECL;
       type = (FUNC8 (type) == FUNCTION_DECL)
	 ? FUNC3 (type) : FUNC9 (type))
    {
      if (FUNC8 (type) != FUNCTION_DECL)
	{
	  if (FUNC0 (type)
	      && FUNC7 (FUNC2 (type))
	      && FUNC10 (FUNC1 (type)))
	    ++depth;
	}
      else
	{
	  if (FUNC4 (type)
	      && FUNC7 (FUNC6 (type))
	      && FUNC10 (FUNC5 (type)))
	    ++depth;
	}
    }

  return depth;
}