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
typedef  int pp_needs_newline ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  BLOCK_POINTER_TYPE 131 
#define  DECL_EXPR 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  POINTER_TYPE 129 
#define  REFERENCE_TYPE 128 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int const TYPE_DECL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (c_pretty_printer *pp, tree t)
{
  if (!FUNC3 (t) && FUNC1 (t) != TYPE_DECL)
    t = FUNC2 (t);
  switch (FUNC1 (t))
    {
    case POINTER_TYPE:
      /* It is easier to handle C++ reference types here.  */
    case REFERENCE_TYPE:
      if (FUNC1 (FUNC2 (t)) == POINTER_TYPE)
	FUNC10 (pp, FUNC2 (t));
      if (FUNC1 (t) == POINTER_TYPE)
	FUNC6 (pp);
      else
	FUNC4 (pp);
      FUNC7 (pp, t);
      break;
    /* APPLE LOCAL begin blocks */
    case BLOCK_POINTER_TYPE:
      FUNC5 (pp);
      FUNC7 (pp, t);
      break;
    /* APPLE LOCAL end blocks */

      /* ??? This node is now in GENERIC and so shouldn't be here.  But
	 we'll fix that later.  */
    case DECL_EXPR:
      FUNC8 (pp, FUNC0 (t));
      pp_needs_newline (pp) = true;
      break;

    default:
      FUNC9 (pp, t);
    }
}