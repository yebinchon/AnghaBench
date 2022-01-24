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
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC10 (tree arg, tree fn)
{
  tree type;

  if (FUNC7 (arg))
    type = arg;
  else if (FUNC9 (arg))
    return false;
  else
    type = FUNC4 (arg);

  /* If TYPE is a class, the class itself and all base classes are
     associated classes.  */
  if (FUNC2 (type))
    {
      if (FUNC8 (type, fn))
	return true;

      if (FUNC5 (type))
	{
	  tree binfo, base_binfo;
	  int i;

	  for (binfo = FUNC5 (type), i = 0;
	       FUNC0 (binfo, i, base_binfo);
	       i++)
	    if (FUNC8 (FUNC1 (base_binfo), fn))
	      return true;
	}
    }

  /* If TYPE is a class member, the class of which it is a member is
     an associated class.  */
  if ((FUNC2 (type)
       || FUNC3 (type) == UNION_TYPE
       || FUNC3 (type) == ENUMERAL_TYPE)
      && FUNC6 (type)
      && FUNC2 (FUNC6 (type))
      && FUNC8 (FUNC6 (type), fn))
    return true;

  return false;
}