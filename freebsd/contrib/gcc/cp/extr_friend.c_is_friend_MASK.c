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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

int
FUNC18 (tree type, tree supplicant)
{
  int declp;
  tree list;
  tree context;

  if (supplicant == NULL_TREE || type == NULL_TREE)
    return 0;

  declp = FUNC5 (supplicant);

  if (declp)
    /* It's a function decl.  */
    {
      tree list = FUNC2 (FUNC14 (type));
      tree name = FUNC4 (supplicant);

      for (; list ; list = FUNC8 (list))
	{
	  if (name == FUNC7 (list))
	    {
	      tree friends = FUNC6 (list);
	      for (; friends ; friends = FUNC8 (friends))
		{
		  tree friend = FUNC11 (friends);

		  if (friend == NULL_TREE)
		    continue;

		  if (supplicant == friend)
		    return 1;

		  if (FUNC16 (supplicant, friend))
		    return 1;
		}
	      break;
	    }
	}
    }
  else
    /* It's a type.  */
    {
      if (FUNC17 (supplicant, type))
	return 1;

      list = FUNC0 (FUNC10 (FUNC14 (type)));
      for (; list ; list = FUNC8 (list))
	{
	  tree t = FUNC11 (list);

	  if (FUNC9 (t) == TEMPLATE_DECL ?
	      FUNC16 (FUNC14 (supplicant), t) :
	      FUNC17 (supplicant, t))
	    return 1;
	}
    }

  if (declp)
    {
      if (FUNC3 (supplicant))
	context = FUNC1 (supplicant);
      else
	context = NULL_TREE;
    }
  else
    {
      if (FUNC12 (supplicant))
	/* Nested classes get the same access as their enclosing types, as
	   per DR 45 (this is a change from the standard).  */
	context = FUNC13 (supplicant);
      else
	/* Local classes have the same access as the enclosing function.  */
	context = FUNC15 (FUNC14 (supplicant));
    }

  /* A namespace is not friend to anybody.  */
  if (context && FUNC9 (context) == NAMESPACE_DECL)
    context = NULL_TREE;

  if (context)
    return FUNC18 (type, context);

  return 0;
}