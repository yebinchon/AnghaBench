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
 int FIELD_DECL ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  PTRMEM_CST 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC13 (tree cst)
{
  switch (FUNC2 (cst))
    {
    case PTRMEM_CST:
      {
	tree type = FUNC3 (cst);
	tree member;

	/* Find the member.  */
	member = FUNC1 (cst);

	if (FUNC2 (member) == FIELD_DECL)
	  {
	    /* Find the offset for the field.  */
	    cst = FUNC7 (member);
	    while (!FUNC11 (FUNC0 (member),
				 FUNC4 (type)))
	      {
		/* The MEMBER must have been nestled within an
		   anonymous aggregate contained in TYPE.  Find the
		   anonymous aggregate.  */
		member = FUNC10 (FUNC4 (type),
					    FUNC0 (member));
		cst = FUNC12 (PLUS_EXPR, cst, FUNC7 (member));
	      }
	    cst = FUNC9 (FUNC5 (type, cst));
	  }
	else
	  {
	    tree delta;
	    tree pfn;

	    FUNC8 (cst, &delta, &pfn);
	    cst = FUNC6 (type, delta, pfn);
	  }
      }
      break;

    default:
      /* There's nothing to do.  */
      break;
    }

  return cst;
}