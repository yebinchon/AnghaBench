#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_clobbers_to_add; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {int num_insns; int veclen; int dup; TYPE_2__ insn; int /*<<< orphan*/  c_test; TYPE_1__ pred; scalar_t__ intval; int /*<<< orphan*/  code; int /*<<< orphan*/  mode; } ;
struct decision_test {int type; TYPE_3__ u; } ;
typedef  enum routine_type { ____Placeholder_routine_type } routine_type ;

/* Variables and functions */
#define  DT_accept_insn 141 
#define  DT_c_test 140 
#define  DT_code 139 
#define  DT_const_int 138 
#define  DT_dup 137 
#define  DT_elt_one_int 136 
#define  DT_elt_zero_int 135 
#define  DT_elt_zero_wide 134 
#define  DT_elt_zero_wide_safe 133 
#define  DT_mode 132 
#define  DT_num_insns 131 
#define  DT_pred 130 
#define  DT_veclen 129 
#define  DT_veclen_ge 128 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int RECOG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7 (struct decision_test *p, int depth,
	    enum routine_type subroutine_type)
{
  switch (p->type)
    {
    case DT_num_insns:
      FUNC6 ("peep2_current_count >= %d", p->u.num_insns);
      break;

    case DT_mode:
      FUNC6 ("GET_MODE (x%d) == %smode", depth, FUNC0 (p->u.mode));
      break;

    case DT_code:
      FUNC6 ("GET_CODE (x%d) == ", depth);
      FUNC4 (p->u.code);
      break;

    case DT_veclen:
      FUNC6 ("XVECLEN (x%d, 0) == %d", depth, p->u.veclen);
      break;

    case DT_elt_zero_int:
      FUNC6 ("XINT (x%d, 0) == %d", depth, (int) p->u.intval);
      break;

    case DT_elt_one_int:
      FUNC6 ("XINT (x%d, 1) == %d", depth, (int) p->u.intval);
      break;

    case DT_elt_zero_wide:
    case DT_elt_zero_wide_safe:
      FUNC6 ("XWINT (x%d, 0) == ", depth);
      FUNC5 (p->u.intval);
      break;

    case DT_const_int:
      FUNC6 ("x%d == const_int_rtx[MAX_SAVED_CONST_INT + (%d)]",
	      depth, (int) p->u.intval);
      break;

    case DT_veclen_ge:
      FUNC6 ("XVECLEN (x%d, 0) >= %d", depth, p->u.veclen);
      break;

    case DT_dup:
      FUNC6 ("rtx_equal_p (x%d, operands[%d])", depth, p->u.dup);
      break;

    case DT_pred:
      FUNC6 ("%s (x%d, %smode)", p->u.pred.name, depth,
	      FUNC0 (p->u.pred.mode));
      break;

    case DT_c_test:
      FUNC3 (p->u.c_test);
      break;

    case DT_accept_insn:
      FUNC1 (subroutine_type == RECOG);
      FUNC1 (p->u.insn.num_clobbers_to_add);
      FUNC6 ("pnum_clobbers != NULL");
      break;

    default:
      FUNC2 ();
    }
}