#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int dummy; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {struct loop* loop_father; } ;

/* Variables and functions */
#define  MODIFY_EXPR 129 
 int /*<<< orphan*/  NULL_TREE ; 
#define  PHI_NODE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int VECTOR_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  chrec_not_analyzed_yet ; 
 int /*<<< orphan*/  FUNC7 (struct loop*,struct loop*,int /*<<< orphan*/ ) ; 
 struct loop* FUNC8 (struct loop*,struct loop*) ; 
 int /*<<< orphan*/  FUNC9 (struct loop*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC17 (struct loop *loop, tree var, tree res)
{
  tree def, type = FUNC4 (var);
  basic_block bb;
  struct loop *def_loop;

  if (loop == NULL || FUNC2 (type) == VECTOR_TYPE)
    return chrec_dont_know;

  if (FUNC2 (var) != SSA_NAME)
    return FUNC13 (loop, NULL_TREE, var, type);

  def = FUNC1 (var);
  bb = FUNC6 (def);
  def_loop = bb ? bb->loop_father : NULL;

  if (bb == NULL
      || !FUNC9 (loop, bb))
    {
      /* Keep the symbolic form.  */
      res = var;
      goto set_and_end;
    }

  if (res != chrec_not_analyzed_yet)
    {
      if (loop != bb->loop_father)
	res = FUNC7 
	    (FUNC8 (loop, bb->loop_father), bb->loop_father, res);

      goto set_and_end;
    }

  if (loop != def_loop)
    {
      res = FUNC17 (def_loop, var, chrec_not_analyzed_yet);
      res = FUNC7 (loop, def_loop, res);

      goto set_and_end;
    }

  switch (FUNC2 (def))
    {
    case MODIFY_EXPR:
      res = FUNC13 (loop, def, FUNC3 (def, 1), type);

      if (FUNC0 (type)
	  && !FUNC5 (res)
	  && FUNC15 (var))
	res = FUNC10 (res, def);
      break;

    case PHI_NODE:
      if (FUNC14 (def))
	res = FUNC12 (loop, def);
      else
	res = FUNC11 (loop, def);
      break;

    default:
      res = chrec_dont_know;
      break;
    }

 set_and_end:

  /* Keep the symbolic form.  */
  if (res == chrec_dont_know)
    res = var;

  if (loop == def_loop)
    FUNC16 (var, res);

  return res;
}