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
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int PUSH_LOCAL ; 
 int PUSH_USING ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 

void
FUNC17 (tree decl, tree scope, tree name)
{
  tree oldval, oldtype, newval, newtype;
  tree orig_decl = decl;

  decl = FUNC16 (decl, scope, name);
  if (decl == NULL_TREE)
    return;

  if (FUNC6 ()
      && FUNC5 ())
    FUNC4 (decl);

  oldval = FUNC11 (name);
  oldtype = FUNC12 (name);

  FUNC9 (scope, name, oldval, oldtype, &newval, &newtype);

  if (newval)
    {
      if (FUNC10 (newval))
	{
	  tree fn, term;

	  /* We only need to push declarations for those functions
	     that were not already bound in the current level.
	     The old value might be NULL_TREE, it might be a single
	     function, or an OVERLOAD.  */
	  if (oldval && FUNC3 (oldval) == OVERLOAD)
	    term = FUNC1 (oldval);
	  else
	    term = oldval;
	  for (fn = newval; fn && FUNC0 (fn) != term;
	       fn = FUNC2 (fn))
	    FUNC14 (FUNC0 (fn),
				  PUSH_LOCAL | PUSH_USING,
				  false);
	}
      else
	FUNC13 (name, newval, PUSH_USING);
    }
  if (newtype)
    {
      FUNC13 (name, newtype, PUSH_USING);
      FUNC15 (name, newtype);
    }

  /* Emit debug info.  */
  if (!processing_template_decl)
    FUNC7 (orig_decl, FUNC8());
}