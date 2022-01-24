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
typedef  int /*<<< orphan*/  tree ;
struct ar_data {int* step; int* delta; int /*<<< orphan*/  stmt; int /*<<< orphan*/  loop; } ;
struct TYPE_3__ {int /*<<< orphan*/  step; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ affine_iv ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ ALIGN_INDIRECT_REF ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ MISALIGNED_INDIRECT_REF ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (tree base, tree *index, void *data)
{
  struct ar_data *ar_data = data;
  tree ibase, step, stepsize;
  HOST_WIDE_INT istep, idelta = 0, imult = 1;
  affine_iv iv;

  if (FUNC0 (base) == MISALIGNED_INDIRECT_REF
      || FUNC0 (base) == ALIGN_INDIRECT_REF)
    return false;

  if (!FUNC7 (ar_data->loop, ar_data->stmt, *index, &iv, false))
    return false;
  ibase = iv.base;
  step = iv.step;

  if (FUNC8 (step))
    istep = 0;
  else
    {
      if (!FUNC5 (step))
	return false;
      istep = FUNC6 (step);
    }

  if (FUNC0 (ibase) == PLUS_EXPR
      && FUNC5 (FUNC1 (ibase, 1)))
    {
      idelta = FUNC6 (FUNC1 (ibase, 1));
      ibase = FUNC1 (ibase, 0);
    }
  if (FUNC5 (ibase))
    {
      idelta += FUNC6 (ibase);
      ibase = FUNC4 (FUNC2 (ibase), 0);
    }

  if (FUNC0 (base) == ARRAY_REF)
    {
      stepsize = FUNC3 (base);
      if (!FUNC5 (stepsize))
	return false;
      imult = FUNC6 (stepsize);

      istep *= imult;
      idelta *= imult;
    }

  *ar_data->step += istep;
  *ar_data->delta += idelta;
  *index = ibase;

  return true;
}