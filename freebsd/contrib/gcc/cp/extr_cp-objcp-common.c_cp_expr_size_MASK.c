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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_zero_node ; 

tree
FUNC10 (tree exp)
{
  tree type = FUNC4 (exp);

  if (FUNC1 (type))
    {
      /* The backend should not be interested in the size of an expression
	 of a type with both of these set; all copies of such types must go
	 through a constructor or assignment op.  */
      FUNC7 (!FUNC6 (type)
		  || !FUNC5 (type)
		  /* But storing a CONSTRUCTOR isn't a copy.  */
		  || FUNC3 (exp) == CONSTRUCTOR
		  /* And, the gimplifier will sometimes make a copy of
		     an aggregate.  In particular, for a case like:

			struct S { S(); };
			struct X { int a; S s; };
			X x = { 0 };

		     the gimplifier will create a temporary with
		     static storage duration, perform static
		     initialization of the temporary, and then copy
		     the result.  Since the "s" subobject is never
		     constructed, this is a valid transformation.  */
		  || FUNC2 (type));

      /* This would be wrong for a type with virtual bases, but they are
	 caught by the assert above.  */
      return (FUNC8 (type)
	      ? size_zero_node
	      : FUNC0 (type));
    }
  else
    /* Use the default code.  */
    return FUNC9 (exp);
}