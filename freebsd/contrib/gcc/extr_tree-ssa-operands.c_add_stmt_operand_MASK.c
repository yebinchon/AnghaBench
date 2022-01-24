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
typedef  int /*<<< orphan*/  var_ann_t ;
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* stmt_ann_t ;
struct TYPE_4__ {int has_volatile_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int opf_is_def ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (tree *var_p, stmt_ann_t s_ann, int flags)
{
  bool is_real_op;
  tree var, sym;
  var_ann_t v_ann;

  var = *var_p;
  FUNC8 (FUNC2 (var));

  is_real_op = FUNC9 (var);

  /* If this is a real operand, the operand is either an SSA name or a 
     decl.  Virtual operands may only be decls.  */
  FUNC8 (is_real_op || FUNC0 (var));

  sym = (FUNC3 (var) == SSA_NAME ? FUNC1 (var) : var);
  v_ann = FUNC10 (sym);

  /* Mark statements with volatile operands.  Optimizers should back
     off from statements having volatile operands.  */
  if (FUNC4 (sym) && s_ann)
    s_ann->has_volatile_ops = true;

  if (is_real_op)
    {
      /* The variable is a GIMPLE register.  Add it to real operands.  */
      if (flags & opf_is_def)
	FUNC6 (var_p);
      else
	FUNC7 (var_p);
    }
  else
    FUNC5 (var, s_ann, flags, NULL_TREE, 0, -1, false);
}