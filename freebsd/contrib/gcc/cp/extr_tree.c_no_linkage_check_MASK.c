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
#define  ARRAY_TYPE 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ENUMERAL_TYPE 135 
#define  FUNCTION_TYPE 134 
#define  METHOD_TYPE 133 
 int /*<<< orphan*/  NULL_TREE ; 
#define  OFFSET_TYPE 132 
#define  POINTER_TYPE 131 
#define  RECORD_TYPE 130 
#define  REFERENCE_TYPE 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  void_list_node ; 

tree
FUNC14 (tree t, bool relaxed_p)
{
  tree r;

  /* There's no point in checking linkage on template functions; we
     can't know their complete types.  */
  if (processing_template_decl)
    return NULL_TREE;

  switch (FUNC2 (t))
    {
      tree fn;

    case RECORD_TYPE:
      if (FUNC10 (t))
	goto ptrmem;
      /* Fall through.  */
    case UNION_TYPE:
      if (!FUNC0 (t))
	return NULL_TREE;
      /* Fall through.  */
    case ENUMERAL_TYPE:
      if (FUNC6 (t))
	return t;
      fn = FUNC13 (FUNC8 (t));
      if (fn && (!relaxed_p || !FUNC3 (fn)))
	return t;
      return NULL_TREE;

    case ARRAY_TYPE:
    case POINTER_TYPE:
    case REFERENCE_TYPE:
      return FUNC14 (FUNC4 (t), relaxed_p);

    case OFFSET_TYPE:
    ptrmem:
      r = FUNC14 (FUNC12 (t),
			    relaxed_p);
      if (r)
	return r;
      return FUNC14 (FUNC11 (t), relaxed_p);

    case METHOD_TYPE:
      r = FUNC14 (FUNC9 (t), relaxed_p);
      if (r)
	return r;
      /* Fall through.  */
    case FUNCTION_TYPE:
      {
	tree parm;
	for (parm = FUNC7 (t);
	     parm && parm != void_list_node;
	     parm = FUNC1 (parm))
	  {
	    r = FUNC14 (FUNC5 (parm), relaxed_p);
	    if (r)
	      return r;
	  }
	return FUNC14 (FUNC4 (t), relaxed_p);
      }

    default:
      return NULL_TREE;
    }
}