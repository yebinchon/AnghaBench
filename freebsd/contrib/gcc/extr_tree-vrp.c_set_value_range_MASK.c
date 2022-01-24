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
struct TYPE_3__ {int type; int /*<<< orphan*/ * equiv; scalar_t__ max; scalar_t__ min; } ;
typedef  TYPE_1__ value_range_t ;
typedef  scalar_t__ tree ;
typedef  enum value_range_type { ____Placeholder_value_range_type } value_range_type ;
typedef  int /*<<< orphan*/ * bitmap ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int VR_ANTI_RANGE ; 
 int VR_RANGE ; 
 int VR_UNDEFINED ; 
 int VR_VARYING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void
FUNC12 (value_range_t *vr, enum value_range_type t, tree min,
		 tree max, bitmap equiv)
{
#if defined ENABLE_CHECKING
  /* Check the validity of the range.  */
  if (t == VR_RANGE || t == VR_ANTI_RANGE)
    {
      int cmp;

      gcc_assert (min && max);

      if (INTEGRAL_TYPE_P (TREE_TYPE (min)) && t == VR_ANTI_RANGE)
	gcc_assert (!vrp_val_is_min (min) || !vrp_val_is_max (max));

      cmp = compare_values (min, max);
      gcc_assert (cmp == 0 || cmp == -1 || cmp == -2);

      if (needs_overflow_infinity (TREE_TYPE (min)))
	gcc_assert (!is_overflow_infinity (min)
		    || !is_overflow_infinity (max));
    }

  if (t == VR_UNDEFINED || t == VR_VARYING)
    gcc_assert (min == NULL_TREE && max == NULL_TREE);

  if (t == VR_UNDEFINED || t == VR_VARYING)
    gcc_assert (equiv == NULL || bitmap_empty_p (equiv));
#endif

  vr->type = t;
  vr->min = min;
  vr->max = max;

  /* Since updating the equivalence set involves deep copying the
     bitmaps, only do it if absolutely necessary.  */
  if (vr->equiv == NULL)
    vr->equiv = FUNC0 (NULL);

  if (equiv != vr->equiv)
    {
      if (equiv && !FUNC5 (equiv))
	FUNC4 (vr->equiv, equiv);
      else
	FUNC3 (vr->equiv);
    }
}