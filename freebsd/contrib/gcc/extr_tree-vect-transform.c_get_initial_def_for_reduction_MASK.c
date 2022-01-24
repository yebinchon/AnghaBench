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
typedef  int /*<<< orphan*/  stmt_vec_info ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
#define  DOT_PROD_EXPR 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  MAX_EXPR 131 
#define  MIN_EXPR 130 
 int /*<<< orphan*/  NULL_TREE ; 
#define  PLUS_EXPR 129 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  WIDEN_SUM_EXPR 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst0 ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC17 (tree stmt, tree init_val, tree *scalar_def)
{
  stmt_vec_info stmt_vinfo = FUNC16 (stmt);
  tree vectype = FUNC3 (stmt_vinfo);
  int nunits = FUNC0 (FUNC7 (vectype));
  int nelements;
  enum tree_code code = FUNC4 (FUNC5 (stmt, 1));
  tree type = FUNC6 (init_val);
  tree def;
  tree vec, t = NULL_TREE;
  bool need_epilog_adjust;
  int i;

  FUNC12 (FUNC1 (type) || FUNC2 (type));

  switch (code)
  {
  case WIDEN_SUM_EXPR:
  case DOT_PROD_EXPR:
  case PLUS_EXPR:
    if (FUNC1 (type))
      def = FUNC9 (type, 0);
    else
      def = FUNC10 (type, dconst0);

#ifdef ADJUST_IN_EPILOG
    /* All the 'nunits' elements are set to 0. The final result will be
       adjusted by 'init_val' at the loop epilog.  */
    nelements = nunits;
    need_epilog_adjust = true;
#else
    /* 'nunits - 1' elements are set to 0; The last element is set to 
        'init_val'.  No further adjustments at the epilog are needed.  */
    nelements = nunits - 1;
    need_epilog_adjust = false;
#endif
    break;

  case MIN_EXPR:
  case MAX_EXPR:
    def = init_val;
    nelements = nunits;
    need_epilog_adjust = false;
    break;

  default:
    FUNC13 ();
  }

  for (i = nelements - 1; i >= 0; --i)
    t = FUNC14 (NULL_TREE, def, t);

  if (nelements == nunits - 1)
    {
      /* Set the last element of the vector.  */
      t = FUNC14 (NULL_TREE, init_val, t);
      nelements += 1;
    }
  FUNC12 (nelements == nunits);
  
  if (FUNC4 (init_val) == INTEGER_CST || FUNC4 (init_val) == REAL_CST)
    vec = FUNC11 (vectype, t);
  else
    vec = FUNC8 (vectype, t);
    
  if (!need_epilog_adjust)
    *scalar_def = NULL_TREE;
  else
    *scalar_def = init_val;

  return FUNC15 (stmt, vec);
}