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
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 scalar_t__ ARRAY_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ MODE_INT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sizetype ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

tree
FUNC16 (tree exp)
{
  if ((FUNC2 (exp) == INDIRECT_REF
       || FUNC2 (exp) == ARRAY_REF)
      && FUNC2 (FUNC7 (exp)) == INTEGER_TYPE)
    {
      tree exp1 = FUNC4 (exp, 0);
      tree index;
      tree string;

      if (FUNC2 (exp) == INDIRECT_REF)
	string = FUNC15 (exp1, &index);
      else
	{
	  tree low_bound = FUNC9 (exp);
	  index = FUNC12 (sizetype, FUNC4 (exp, 1));

	  /* Optimize the special-case of a zero lower bound.

	     We convert the low_bound to sizetype to avoid some problems
	     with constant folding.  (E.g. suppose the lower bound is 1,
	     and its mode is QI.  Without the conversion,l (ARRAY
	     +(INDEX-(unsigned char)1)) becomes ((ARRAY+(-(unsigned char)1))
	     +INDEX), which becomes (ARRAY+255+INDEX).  Opps!)  */
	  if (! FUNC13 (low_bound))
	    index = FUNC14 (index, FUNC12 (sizetype, low_bound));

	  string = exp1;
	}

      if (string
	  && FUNC8 (FUNC7 (exp)) == FUNC8 (FUNC7 (FUNC7 (string)))
	  && FUNC2 (string) == STRING_CST
	  && FUNC2 (index) == INTEGER_CST
	  && FUNC11 (index, FUNC5 (string)) < 0
	  && (FUNC0 (FUNC8 (FUNC7 (FUNC7 (string))))
	      == MODE_INT)
	  && (FUNC1 (FUNC8 (FUNC7 (FUNC7 (string)))) == 1))
	return FUNC12 (FUNC7 (exp),
			     FUNC10 (NULL_TREE,
					    (FUNC6 (string)
					     [FUNC3 (index)])));
    }
  return NULL;
}