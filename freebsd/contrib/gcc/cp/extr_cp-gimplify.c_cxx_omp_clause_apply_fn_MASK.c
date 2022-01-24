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
 int /*<<< orphan*/  ARRAY_REF ; 
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * boolean_type_node ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  size_zero_node ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * void_list_node ; 
 int /*<<< orphan*/ * void_type_node ; 

__attribute__((used)) static tree
FUNC21 (tree fn, tree arg1, tree arg2)
{
  tree defparm, parm;
  int i;

  if (fn == NULL)
    return NULL;

  defparm = FUNC0 (FUNC5 (FUNC3 (fn)));
  if (arg2)
    defparm = FUNC0 (defparm);

  if (FUNC1 (FUNC3 (arg1)) == ARRAY_TYPE)
    {
      tree inner_type = FUNC3 (arg1);
      tree start1, end1, p1;
      tree start2 = NULL, p2 = NULL;
      tree ret = NULL, lab, t;

      start1 = arg1;
      start2 = arg2;
      do
	{
	  inner_type = FUNC3 (inner_type);
	  start1 = FUNC11 (ARRAY_REF, inner_type, start1,
			   size_zero_node, NULL, NULL);
	  if (arg2)
	    start2 = FUNC11 (ARRAY_REF, inner_type, start2,
			     size_zero_node, NULL, NULL);
	}
      while (FUNC1 (inner_type) == ARRAY_TYPE);
      start1 = FUNC14 (start1);
      if (arg2)
	start2 = FUNC14 (start2);

      end1 = FUNC6 (FUNC3 (arg1));
      end1 = FUNC18 (FUNC3 (start1), end1);
      end1 = FUNC9 (PLUS_EXPR, FUNC3 (start1), start1, end1);

      p1 = FUNC17 (FUNC3 (start1), NULL);
      t = FUNC9 (MODIFY_EXPR, void_type_node, p1, start1);
      FUNC7 (t, &ret);

      if (arg2)
	{
	  p2 = FUNC17 (FUNC3 (start2), NULL);
	  t = FUNC9 (MODIFY_EXPR, void_type_node, p2, start2);
	  FUNC7 (t, &ret);
	}

      lab = FUNC16 ();
      t = FUNC8 (LABEL_EXPR, void_type_node, lab);
      FUNC7 (t, &ret);

      t = FUNC20 (NULL, p1, NULL);
      if (arg2)
	t = FUNC20 (NULL, p2, t);
      /* Handle default arguments.  */
      i = 1 + (arg2 != NULL);
      for (parm = defparm; parm != void_list_node; parm = FUNC0 (parm))
	t = FUNC20 (NULL, FUNC15 (FUNC4 (parm),
						  FUNC2 (parm),
						  fn, i++), t);
      t = FUNC13 (fn, FUNC19 (t));
      FUNC7 (t, &ret);

      t = FUNC18 (FUNC3 (p1), FUNC6 (inner_type));
      t = FUNC9 (PLUS_EXPR, FUNC3 (p1), p1, t);
      t = FUNC9 (MODIFY_EXPR, void_type_node, p1, t);
      FUNC7 (t, &ret);

      if (arg2)
	{
	  t = FUNC18 (FUNC3 (p2), FUNC6 (inner_type));
	  t = FUNC9 (PLUS_EXPR, FUNC3 (p2), p2, t);
	  t = FUNC9 (MODIFY_EXPR, void_type_node, p2, t);
	  FUNC7 (t, &ret);
	}

      t = FUNC9 (NE_EXPR, boolean_type_node, p1, end1);
      t = FUNC10 (COND_EXPR, void_type_node, t, FUNC12 (&lab), NULL);
      FUNC7 (t, &ret);

      return ret;
    }
  else
    {
      tree t = FUNC20 (NULL, FUNC14 (arg1), NULL);
      if (arg2)
	t = FUNC20 (NULL, FUNC14 (arg2), t);
      /* Handle default arguments.  */
      i = 1 + (arg2 != NULL);
      for (parm = defparm; parm != void_list_node; parm = FUNC0 (parm))
	t = FUNC20 (NULL, FUNC15 (FUNC4 (parm),
						  FUNC2 (parm),
						  fn, i++), t);
      return FUNC13 (fn, FUNC19 (t));
    }
}