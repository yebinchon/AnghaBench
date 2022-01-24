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
struct algorithm {int* op; int ops; int* log; } ;
typedef  scalar_t__ rtx ;
typedef  enum mult_variant { ____Placeholder_mult_variant } mult_variant ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int add_variant ; 
#define  alg_add_factor 134 
#define  alg_add_t2_m 133 
#define  alg_add_t_m2 132 
 int alg_m ; 
#define  alg_shift 131 
#define  alg_sub_factor 130 
#define  alg_sub_t2_m 129 
#define  alg_sub_t_m2 128 
 int alg_zero ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  neg_optab ; 
 int negate_variant ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC20 (enum machine_mode mode, rtx op0, HOST_WIDE_INT val,
		   rtx target, const struct algorithm *alg,
		   enum mult_variant variant)
{
  HOST_WIDE_INT val_so_far;
  rtx insn, accum, tem;
  int opno;
  enum machine_mode nmode;

  /* Avoid referencing memory over and over.
     For speed, but also for correctness when mem is volatile.  */
  if (FUNC4 (op0))
    op0 = FUNC11 (mode, op0);

  /* ACCUM starts out either as OP0 or as a zero, depending on
     the first operation.  */

  if (alg->op[0] == alg_zero)
    {
      accum = FUNC7 (mode, const0_rtx);
      val_so_far = 0;
    }
  else if (alg->op[0] == alg_m)
    {
      accum = FUNC7 (mode, op0);
      val_so_far = 1;
    }
  else
    FUNC13 ();

  for (opno = 1; opno < alg->ops; opno++)
    {
      int log = alg->log[opno];
      rtx shift_subtarget = optimize ? 0 : accum;
      rtx add_target
	= (opno == alg->ops - 1 && target != 0 && variant != add_variant
	   && !optimize)
	  ? target : 0;
      rtx accum_target = optimize ? 0 : accum;

      switch (alg->op[opno])
	{
	case alg_shift:
	  accum = FUNC8 (LSHIFT_EXPR, mode, accum,
				FUNC6 (NULL_TREE, log),
				NULL_RTX, 0);
	  val_so_far <<= log;
	  break;

	case alg_add_t_m2:
	  tem = FUNC8 (LSHIFT_EXPR, mode, op0,
			      FUNC6 (NULL_TREE, log),
			      NULL_RTX, 0);
	  accum = FUNC10 (FUNC17 (mode, accum, tem),
				 add_target ? add_target : accum_target);
	  val_so_far += (HOST_WIDE_INT) 1 << log;
	  break;

	case alg_sub_t_m2:
	  tem = FUNC8 (LSHIFT_EXPR, mode, op0,
			      FUNC6 (NULL_TREE, log),
			      NULL_RTX, 0);
	  accum = FUNC10 (FUNC15 (mode, accum, tem),
				 add_target ? add_target : accum_target);
	  val_so_far -= (HOST_WIDE_INT) 1 << log;
	  break;

	case alg_add_t2_m:
	  accum = FUNC8 (LSHIFT_EXPR, mode, accum,
				FUNC6 (NULL_TREE, log),
				shift_subtarget,
				0);
	  accum = FUNC10 (FUNC17 (mode, accum, op0),
				 add_target ? add_target : accum_target);
	  val_so_far = (val_so_far << log) + 1;
	  break;

	case alg_sub_t2_m:
	  accum = FUNC8 (LSHIFT_EXPR, mode, accum,
				FUNC6 (NULL_TREE, log),
				shift_subtarget, 0);
	  accum = FUNC10 (FUNC15 (mode, accum, op0),
				 add_target ? add_target : accum_target);
	  val_so_far = (val_so_far << log) - 1;
	  break;

	case alg_add_factor:
	  tem = FUNC8 (LSHIFT_EXPR, mode, accum,
			      FUNC6 (NULL_TREE, log),
			      NULL_RTX, 0);
	  accum = FUNC10 (FUNC17 (mode, accum, tem),
				 add_target ? add_target : accum_target);
	  val_so_far += val_so_far << log;
	  break;

	case alg_sub_factor:
	  tem = FUNC8 (LSHIFT_EXPR, mode, accum,
			      FUNC6 (NULL_TREE, log),
			      NULL_RTX, 0);
	  accum = FUNC10 (FUNC15 (mode, tem, accum),
				 (add_target
				  ? add_target : (optimize ? 0 : tem)));
	  val_so_far = (val_so_far << log) - val_so_far;
	  break;

	default:
	  FUNC13 ();
	}

      /* Write a REG_EQUAL note on the last insn so that we can cse
	 multiplication sequences.  Note that if ACCUM is a SUBREG,
	 we've set the inner register and must properly indicate
	 that.  */

      tem = op0, nmode = mode;
      if (FUNC1 (accum) == SUBREG)
	{
	  nmode = FUNC2 (FUNC5 (accum));
	  tem = FUNC14 (nmode, op0);
	}

      insn = FUNC18 ();
      FUNC19 (insn, REG_EQUAL,
			   FUNC16 (nmode, tem, FUNC0 (val_so_far)));
    }

  if (variant == negate_variant)
    {
      val_so_far = -val_so_far;
      accum = FUNC9 (mode, neg_optab, accum, target, 0);
    }
  else if (variant == add_variant)
    {
      val_so_far = val_so_far + 1;
      accum = FUNC10 (FUNC17 (mode, accum, op0), target);
    }

  /* Compare only the bits of val and val_so_far that are significant
     in the result mode, to avoid sign-/zero-extension confusion.  */
  val &= FUNC3 (mode);
  val_so_far &= FUNC3 (mode);
  FUNC12 (val == val_so_far);

  return accum;
}