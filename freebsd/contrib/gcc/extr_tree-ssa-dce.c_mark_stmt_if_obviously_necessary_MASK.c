#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* stmt_ann_t ;
struct TYPE_5__ {int /*<<< orphan*/  succs; } ;
struct TYPE_4__ {scalar_t__ has_volatile_ops; } ;

/* Variables and functions */
#define  ASM_EXPR 138 
#define  BIND_EXPR 137 
#define  CALL_EXPR 136 
#define  CASE_LABEL_EXPR 135 
#define  COND_EXPR 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EXC_PTR_EXPR ; 
 int FILTER_EXPR ; 
#define  GOTO_EXPR 133 
#define  LABEL_EXPR 132 
#define  MODIFY_EXPR 131 
#define  RESX_EXPR 130 
#define  RETURN_EXPR 129 
#define  SWITCH_EXPR 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_non_call_exceptions ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (tree stmt, bool aggressive)
{
  stmt_ann_t ann;
  tree op;

  /* With non-call exceptions, we have to assume that all statements could
     throw.  If a statement may throw, it is inherently necessary.  */
  if (flag_non_call_exceptions
      && FUNC12 (stmt))
    {
      FUNC9 (stmt, true);
      return;
    }

  /* Statements that are implicitly live.  Most function calls, asm and return
     statements are required.  Labels and BIND_EXPR nodes are kept because
     they are control flow, and we have no way of knowing whether they can be
     removed.  DCE can eliminate all the other statements in a block, and CFG
     can then remove the block and labels.  */
  switch (FUNC1 (stmt))
    {
    case BIND_EXPR:
    case LABEL_EXPR:
    case CASE_LABEL_EXPR:
      FUNC9 (stmt, false);
      return;

    case ASM_EXPR:
    case RESX_EXPR:
    case RETURN_EXPR:
      FUNC9 (stmt, true);
      return;

    case CALL_EXPR:
      /* Most, but not all function calls are required.  Function calls that
	 produce no result and have no side effects (i.e. const pure
	 functions) are unnecessary.  */
      if (FUNC3 (stmt))
	FUNC9 (stmt, true);
      return;

    case MODIFY_EXPR:
      op = FUNC6 (stmt);
      if (op && FUNC3 (op))
	{
	  FUNC9 (stmt, true);
	  return;
	}

      /* These values are mildly magic bits of the EH runtime.  We can't
	 see the entire lifetime of these values until landing pads are
	 generated.  */
      if (FUNC1 (FUNC2 (stmt, 0)) == EXC_PTR_EXPR
	  || FUNC1 (FUNC2 (stmt, 0)) == FILTER_EXPR)
	{
	  FUNC9 (stmt, true);
	  return;
	}
      break;

    case GOTO_EXPR:
      FUNC5 (!FUNC10 (stmt));
      FUNC9 (stmt, true);
      return;

    case COND_EXPR:
      FUNC5 (FUNC0 (FUNC4 (stmt)->succs) == 2);
      /* Fall through.  */

    case SWITCH_EXPR:
      if (! aggressive)
	FUNC9 (stmt, true);
      break;

    default:
      break;
    }

  ann = FUNC11 (stmt);

  /* If the statement has volatile operands, it needs to be preserved.
     Same for statements that can alter control flow in unpredictable
     ways.  */
  if (ann->has_volatile_ops || FUNC7 (stmt))
    {
      FUNC9 (stmt, true);
      return;
    }

  if (FUNC8 (stmt))
    {
      FUNC9 (stmt, true);
      return;
    }

  return;
}