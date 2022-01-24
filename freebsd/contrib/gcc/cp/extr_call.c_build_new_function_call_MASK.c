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
typedef  char* tree ;
struct z_candidate {int /*<<< orphan*/  fn; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (struct z_candidate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 char* error_mark_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 struct z_candidate* FUNC9 (char*,char*,struct z_candidate**,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct z_candidate*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 

tree
FUNC13 (tree fn, tree args, bool koenig_p)
{
  struct z_candidate *candidates, *cand;
  bool any_viable_p;
  void *p;
  tree result;

  args = FUNC12 (args);
  if (args == error_mark_node)
    return error_mark_node;

  /* If this function was found without using argument dependent
     lookup, then we want to ignore any undeclared friend
     functions.  */
  if (!koenig_p)
    {
      tree orig_fn = fn;

      fn = FUNC11 (fn);
      if (!fn)
	{
	  FUNC7 ("no matching function for call to %<%D(%A)%>",
		 FUNC0 (FUNC1 (orig_fn)), args);
	  return error_mark_node;
	}
    }

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC6 (0);

  cand = FUNC9 (fn, args, &candidates, &any_viable_p);

  if (!cand)
    {
      if (!any_viable_p && candidates && ! candidates->next)
	return FUNC4 (candidates->fn, args);
      if (FUNC2 (fn) == TEMPLATE_ID_EXPR)
	fn = FUNC3 (fn, 0);
      if (!any_viable_p)
	FUNC7 ("no matching function for call to %<%D(%A)%>",
	       FUNC0 (FUNC1 (fn)), args);
      else
	FUNC7 ("call of overloaded %<%D(%A)%> is ambiguous",
	       FUNC0 (FUNC1 (fn)), args);
      if (candidates)
	FUNC10 (candidates);
      result = error_mark_node;
    }
  else
    result = FUNC5 (cand, LOOKUP_NORMAL);

  /* Free all the conversions we allocated.  */
  FUNC8 (&conversion_obstack, p);

  return result;
}