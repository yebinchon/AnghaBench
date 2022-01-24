#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_2__ {int stmts_are_full_exprs_p; } ;

/* Variables and functions */
#define  AGGR_INIT_EXPR 148 
#define  BASELINK 147 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  BREAK_STMT 146 
#define  CONTINUE_STMT 145 
#define  DO_STMT 144 
#define  EH_SPEC_BLOCK 143 
#define  EMPTY_CLASS_EXPR 142 
#define  EXPR_STMT 141 
#define  FOR_STMT 140 
 int GS_ALL_DONE ; 
 int GS_OK ; 
#define  HANDLER 139 
#define  IF_STMT 138 
#define  INIT_EXPR 137 
#define  MUST_NOT_THROW_EXPR 136 
#define  OMP_FOR 135 
#define  PTRMEM_CST 134 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  SWITCH_STMT 133 
#define  THROW_EXPR 132 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  TRY_BLOCK 131 
#define  UNARY_PLUS_EXPR 130 
#define  USING_STMT 129 
#define  WHILE_STMT 128 
 int /*<<< orphan*/  bc_break ; 
 int /*<<< orphan*/  bc_continue ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 () ; 

int
FUNC27 (tree *expr_p, tree *pre_p, tree *post_p)
{
  int saved_stmts_are_full_exprs_p = 0;
  enum tree_code code = FUNC3 (*expr_p);
  enum gimplify_status ret;

  if (FUNC1 (code))
    {
      saved_stmts_are_full_exprs_p = FUNC26 ();
      FUNC13 ()->stmts_are_full_exprs_p
	= FUNC2 (*expr_p);
    }

  switch (code)
    {
    case PTRMEM_CST:
      *expr_p = FUNC12 (*expr_p);
      ret = GS_OK;
      break;

    case AGGR_INIT_EXPR:
      FUNC25 (expr_p);
      ret = GS_OK;
      break;

    case THROW_EXPR:
      /* FIXME communicate throw type to backend, probably by moving
	 THROW_EXPR into ../tree.def.  */
      *expr_p = FUNC4 (*expr_p, 0);
      ret = GS_OK;
      break;

    case MUST_NOT_THROW_EXPR:
      FUNC22 (expr_p, pre_p);
      ret = GS_OK;
      break;

      /* We used to do this for MODIFY_EXPR as well, but that's unsafe; the
	 LHS of an assignment might also be involved in the RHS, as in bug
	 25979.  */
    case INIT_EXPR:
      FUNC10 (expr_p, pre_p, post_p);
      ret = GS_OK;
      break;

    case EMPTY_CLASS_EXPR:
      /* We create an empty CONSTRUCTOR with RECORD_TYPE.  */
      *expr_p = FUNC7 (FUNC5 (*expr_p), NULL);
      ret = GS_OK;
      break;

    case BASELINK:
      *expr_p = FUNC0 (*expr_p);
      ret = GS_OK;
      break;

    case TRY_BLOCK:
      FUNC17 (expr_p);
      ret = GS_OK;
      break;

    case HANDLER:
      FUNC15 (expr_p);
      ret = GS_OK;
      break;

    case EH_SPEC_BLOCK:
      FUNC16 (expr_p);
      ret = GS_OK;
      break;

    case USING_STMT:
      /* Just ignore for now.  Eventually we will want to pass this on to
	 the debugger.  */
      *expr_p = FUNC8 ();
      ret = GS_ALL_DONE;
      break;

    case IF_STMT:
      FUNC21 (expr_p);
      ret = GS_OK;
      break;

    case FOR_STMT:
      FUNC20 (expr_p, pre_p);
      ret = GS_ALL_DONE;
      break;

    case WHILE_STMT:
      FUNC24 (expr_p);
      ret = GS_ALL_DONE;
      break;

    case DO_STMT:
      FUNC18 (expr_p);
      ret = GS_ALL_DONE;
      break;

    case SWITCH_STMT:
      FUNC23 (expr_p);
      ret = GS_ALL_DONE;
      break;

    case OMP_FOR:
      ret = FUNC11 (expr_p);
      break;

    case CONTINUE_STMT:
      *expr_p = FUNC6 (bc_continue);
      ret = GS_ALL_DONE;
      break;

    case BREAK_STMT:
      *expr_p = FUNC6 (bc_break);
      ret = GS_ALL_DONE;
      break;

    case EXPR_STMT:
      FUNC19 (expr_p);
      ret = GS_OK;
      break;

    case UNARY_PLUS_EXPR:
      {
	tree arg = FUNC4 (*expr_p, 0);
	tree type = FUNC5 (*expr_p);
	*expr_p = (FUNC5 (arg) != type) ? FUNC14 (type, arg)
					    : arg;
	ret = GS_OK;
      }
      break;

    default:
      ret = FUNC9 (expr_p, pre_p, post_p);
      break;
    }

  /* Restore saved state.  */
  if (FUNC1 (code))
    FUNC13 ()->stmts_are_full_exprs_p
      = saved_stmts_are_full_exprs_p;

  return ret;
}