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
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
#define  COND_EXPR 130 
#define  LABEL_EXPR 129 
#define  MODIFY_EXPR 128 
 int /*<<< orphan*/  NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC5 (struct loop *  loop, tree t, tree cond,
		      block_stmt_iterator *bsi)
{
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC1 (dump_file, "------if-convert stmt\n");
      FUNC3 (dump_file, t, TDF_SLIM);
      FUNC3 (dump_file, cond, TDF_SLIM);
    }

  switch (FUNC0 (t))
    {
      /* Labels are harmless here.  */
    case LABEL_EXPR:
      break;

    case MODIFY_EXPR:
      /* This modify_expr is killing previous value of LHS. Appropriate value will
	 be selected by PHI node based on condition. It is possible that before
	 this transformation, PHI nodes was selecting default value and now it will
	 use this new value. This is OK because it does not change validity the
	 program.  */
      break;

    case COND_EXPR:
      /* Update destination blocks' predicate list and remove this
	 condition expression.  */
      FUNC4 (loop, t, cond, bsi);
      cond = NULL_TREE;
      break;

    default:
      FUNC2 ();
    }
  return cond;
}