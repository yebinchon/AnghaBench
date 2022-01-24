#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int num; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  TYPE_1__* edge ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EDGE_TRUE_VALUE ; 
#define  EQ_EXPR 133 
#define  GE_EXPR 132 
#define  GT_EXPR 131 
#define  LE_EXPR 130 
#define  LT_EXPR 129 
 unsigned int MAX_ITERATIONS_TO_TRACK ; 
#define  NE_EXPR 128 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ PHI_NODE ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ chrec_dont_know ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int,unsigned int) ; 
 scalar_t__ FUNC9 (struct loop*,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct loop*) ; 
 int /*<<< orphan*/  FUNC15 (struct loop*) ; 
 int /*<<< orphan*/  unsigned_type_node ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

tree
FUNC17 (struct loop *loop, edge exit)
{
  tree cond, cnd, acnd;
  tree op[2], val[2], next[2], aval[2], phi[2];
  unsigned i, j;
  enum tree_code cmp;

  cond = FUNC13 (exit->src);
  if (!cond || FUNC2 (cond) != COND_EXPR)
    return chrec_dont_know;

  cnd = FUNC0 (cond);
  if (exit->flags & EDGE_TRUE_VALUE)
    cnd = FUNC11 (cnd);

  cmp = FUNC2 (cnd);
  switch (cmp)
    {
    case EQ_EXPR:
    case NE_EXPR:
    case GT_EXPR:
    case GE_EXPR:
    case LT_EXPR:
    case LE_EXPR:
      for (j = 0; j < 2; j++)
	op[j] = FUNC3 (cnd, j);
      break;

    default:
      return chrec_dont_know;
    }

  for (j = 0; j < 2; j++)
    {
      phi[j] = FUNC9 (loop, op[j]);
      if (!phi[j])
	return chrec_dont_know;
    }

  for (j = 0; j < 2; j++)
    {
      if (FUNC2 (phi[j]) == PHI_NODE)
	{
	  val[j] = FUNC1 (phi[j], FUNC15 (loop));
	  next[j] = FUNC1 (phi[j], FUNC14 (loop));
	}
      else
	{
	  val[j] = phi[j];
	  next[j] = NULL_TREE;
	  op[j] = NULL_TREE;
	}
    }

  /* Don't issue signed overflow warnings.  */
  FUNC6 ();

  for (i = 0; i < MAX_ITERATIONS_TO_TRACK; i++)
    {
      for (j = 0; j < 2; j++)
	aval[j] = FUNC10 (op[j], val[j]);

      acnd = FUNC5 (cmp, boolean_type_node, aval[0], aval[1]);
      if (acnd && FUNC16 (acnd))
	{
	  FUNC7 ();
	  if (dump_file && (dump_flags & TDF_DETAILS))
	    FUNC8 (dump_file,
		     "Proved that loop %d iterates %d times using brute force.\n",
		     loop->num, i);
	  return FUNC4 (unsigned_type_node, i);
	}

      for (j = 0; j < 2; j++)
	{
	  val[j] = FUNC10 (next[j], val[j]);
	  if (!FUNC12 (val[j]))
	    {
	      FUNC7 ();
	      return chrec_dont_know;
	    }
	}
    }

  FUNC7 ();

  return chrec_dont_know;
}