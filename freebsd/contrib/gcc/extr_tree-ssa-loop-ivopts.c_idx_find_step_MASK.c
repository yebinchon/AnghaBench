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
typedef  void* tree ;
struct loop {int dummy; } ;
struct iv {void* step; void* base; } ;
struct ifs_ivopts_data {void** step_p; int /*<<< orphan*/  stmt; TYPE_1__* ivopts_data; } ;
struct TYPE_2__ {struct loop* current_loop; } ;

/* Variables and functions */
 scalar_t__ ALIGN_INDIRECT_REF ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ MISALIGNED_INDIRECT_REF ; 
 int /*<<< orphan*/  MULT_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ ,void**,void**,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct loop*,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 struct iv* FUNC8 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  sizetype ; 

__attribute__((used)) static bool
FUNC9 (tree base, tree *idx, void *data)
{
  struct ifs_ivopts_data *dta = data;
  struct iv *iv;
  tree step, iv_base, iv_step, lbound, off;
  struct loop *loop = dta->ivopts_data->current_loop;

  if (FUNC0 (base) == MISALIGNED_INDIRECT_REF
      || FUNC0 (base) == ALIGN_INDIRECT_REF)
    return false;

  /* If base is a component ref, require that the offset of the reference
     be invariant.  */
  if (FUNC0 (base) == COMPONENT_REF)
    {
      off = FUNC4 (base);
      return FUNC6 (loop, off);
    }

  /* If base is array, first check whether we will be able to move the
     reference out of the loop (in order to take its address in strength
     reduction).  In order for this to work we need both lower bound
     and step to be loop invariants.  */
  if (FUNC0 (base) == ARRAY_REF)
    {
      step = FUNC1 (base);
      lbound = FUNC2 (base);

      if (!FUNC6 (loop, step)
	  || !FUNC6 (loop, lbound))
	return false;
    }

  if (FUNC0 (*idx) != SSA_NAME)
    return true;

  iv = FUNC8 (dta->ivopts_data, *idx);
  if (!iv)
    return false;

  /* XXX  We produce for a base of *D42 with iv->base being &x[0]
	  *&x[0], which is not folded and does not trigger the
	  ARRAY_REF path below.  */
  *idx = iv->base;

  if (!iv->step)
    return true;

  if (FUNC0 (base) == ARRAY_REF)
    {
      step = FUNC1 (base);

      /* We only handle addresses whose step is an integer constant.  */
      if (FUNC0 (step) != INTEGER_CST)
	return false;
    }
  else
    /* The step for pointer arithmetics already is 1 byte.  */
    step = FUNC3 (sizetype, 1);

  iv_base = iv->base;
  iv_step = iv->step;
  if (!FUNC5 (dta->ivopts_data->current_loop,
			    sizetype, &iv_base, &iv_step, dta->stmt,
			    false))
    {
      /* The index might wrap.  */
      return false;
    }

  step = FUNC7 (MULT_EXPR, sizetype, step, iv_step);

  if (!*dta->step_p)
    *dta->step_p = step;
  else
    *dta->step_p = FUNC7 (PLUS_EXPR, sizetype, *dta->step_p, step);

  return true;
}