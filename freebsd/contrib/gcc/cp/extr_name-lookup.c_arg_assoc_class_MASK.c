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
struct arg_lookup {scalar_t__ name; int /*<<< orphan*/  classes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 int FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (struct arg_lookup*,scalar_t__) ; 
 scalar_t__ FUNC21 (struct arg_lookup*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct arg_lookup*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC26 (struct arg_lookup *k, tree type)
{
  tree list, friends, context;
  int i;

  /* Backend build structures, such as __builtin_va_list, aren't
     affected by all this.  */
  if (!FUNC5 (type))
    return false;

  if (FUNC24 (type, k->classes))
    return false;
  k->classes = FUNC25 (type, NULL_TREE, k->classes);

  context = FUNC23 (type);
  if (FUNC21 (k, context))
    return true;

  if (FUNC18 (type))
    {
      /* Process baseclasses.  */
      tree binfo, base_binfo;

      for (binfo = FUNC18 (type), i = 0;
	   FUNC0 (binfo, i, base_binfo); i++)
	if (FUNC26 (k, FUNC1 (base_binfo)))
	  return true;
    }

  /* Process friends.  */
  for (list = FUNC7 (FUNC19 (type)); list;
       list = FUNC13 (list))
    if (k->name == FUNC10 (list))
      for (friends = FUNC9 (list); friends;
	   friends = FUNC13 (friends))
	{
	  tree fn = FUNC15 (friends);

	  /* Only interested in global functions with potentially hidden
	     (i.e. unqualified) declarations.  */
	  if (FUNC6 (fn) != context)
	    continue;
	  /* Template specializations are never found by name lookup.
	     (Templates themselves can be found, but not template
	     specializations.)  */
	  if (FUNC14 (fn) == FUNCTION_DECL && FUNC8 (fn))
	    continue;
	  if (FUNC20 (k, fn))
	    return true;
	}

  /* Process template arguments.  */
  if (FUNC2 (type)
      && FUNC12 (FUNC4 (type)))
    {
      list = FUNC11 (FUNC3 (type));
      for (i = 0; i < FUNC17 (list); ++i)
	FUNC22 (k, FUNC16 (list, i));
    }

  return false;
}