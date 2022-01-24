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
#define  CODE_FOR_fmul8x16_vis 130 
#define  CODE_FOR_fmul8x16al_vis 129 
#define  CODE_FOR_fmul8x16au_vis 128 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC8 (int fncode, tree inner_type, tree elts0, tree elts1)
{
  tree n_elts = NULL_TREE;
  int scale;

  switch (fncode)
    {
    case CODE_FOR_fmul8x16_vis:
      for (; elts0 && elts1;
	   elts0 = FUNC0 (elts0), elts1 = FUNC0 (elts1))
	{
	  int val
	    = FUNC6 (FUNC1 (FUNC2 (elts0)),
				 FUNC1 (FUNC2 (elts1)));
	  n_elts = FUNC7 (NULL_TREE,
			      FUNC3 (inner_type, val),
			      n_elts);
	}
      break;

    case CODE_FOR_fmul8x16au_vis:
      scale = FUNC1 (FUNC2 (elts1));

      for (; elts0; elts0 = FUNC0 (elts0))
	{
	  int val
	    = FUNC6 (FUNC1 (FUNC2 (elts0)),
				 scale);
	  n_elts = FUNC7 (NULL_TREE,
			      FUNC3 (inner_type, val),
			      n_elts);
	}
      break;

    case CODE_FOR_fmul8x16al_vis:
      scale = FUNC1 (FUNC2 (FUNC0 (elts1)));

      for (; elts0; elts0 = FUNC0 (elts0))
	{
	  int val
	    = FUNC6 (FUNC1 (FUNC2 (elts0)),
				 scale);
	  n_elts = FUNC7 (NULL_TREE,
			      FUNC3 (inner_type, val),
			      n_elts);
	}
      break;

    default:
      FUNC4 ();
    }

  return FUNC5 (n_elts);

}