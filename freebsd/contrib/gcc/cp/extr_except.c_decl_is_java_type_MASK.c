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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static bool
FUNC8 (tree decl, int err)
{
  bool r = (FUNC2 (decl) == POINTER_TYPE
	    && FUNC2 (FUNC3 (decl)) == RECORD_TYPE
	    && FUNC4 (FUNC3 (decl)));

  if (err)
    {
      if (FUNC2 (decl) == REFERENCE_TYPE
	  && FUNC2 (FUNC3 (decl)) == RECORD_TYPE
	  && FUNC4 (FUNC3 (decl)))
	{
	  /* Can't throw a reference.  */
	  FUNC5 ("type %qT is disallowed in Java %<throw%> or %<catch%>",
		 decl);
	}

      if (r)
	{
	  tree jthrow_node
	    = FUNC1 (FUNC7 ("jthrowable"));

	  if (jthrow_node == NULL_TREE)
	    FUNC6
	      ("call to Java %<catch%> or %<throw%> with %<jthrowable%> undefined");

	  jthrow_node = FUNC3 (FUNC3 (jthrow_node));

	  if (! FUNC0 (jthrow_node, FUNC3 (decl)))
	    {
	      /* Thrown object must be a Throwable.  */
	      FUNC5 ("type %qT is not derived from %<java::lang::Throwable%>",
		     FUNC3 (decl));
	    }
	}
    }

  return r;
}