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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
 int const ARRAY_TYPE ; 
#define  OFFSET_TYPE 131 
#define  POINTER_TYPE 130 
#define  RECORD_TYPE 129 
#define  REFERENCE_TYPE 128 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int const TYPE_DECL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (cxx_pretty_printer *pp, tree t)
{
  if (!FUNC2 (t) && FUNC0 (t) != TYPE_DECL)
    t = FUNC1 (t);
  switch (FUNC0 (t))
    {
    case REFERENCE_TYPE:
    case POINTER_TYPE:
      if (FUNC0 (FUNC1 (t)) == POINTER_TYPE
	  || FUNC6 (FUNC1 (t)))
	FUNC13 (pp, FUNC1 (t));
      if (FUNC0 (t) == POINTER_TYPE)
	{
	  FUNC11 (pp);
	  FUNC8 (pp, t);
	}
      else
	FUNC7 (pp);
      break;

    case RECORD_TYPE:
      if (FUNC4 (t))
	{
	  FUNC9 (pp);
	  FUNC10 (pp, FUNC3 (t));
	  FUNC11 (pp);
	  break;
	}
    case OFFSET_TYPE:
      if (FUNC6 (t))
	{
	  if (FUNC0 (FUNC1 (t)) == ARRAY_TYPE)
	    FUNC9 (pp);
	  FUNC10 (pp, FUNC5 (t));
	  FUNC11 (pp);
	  FUNC8 (pp, t);
	  break;
	}
      /* else fall through.  */

    default:
      FUNC12 (pp, t);
      break;
    }
}