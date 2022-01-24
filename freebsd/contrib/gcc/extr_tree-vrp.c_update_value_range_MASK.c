#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * equiv; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC5 (tree var, value_range_t *new_vr)
{
  value_range_t *old_vr;
  bool is_new;

  /* Update the value range, if necessary.  */
  old_vr = FUNC1 (var);
  is_new = old_vr->type != new_vr->type
	   || !FUNC4 (old_vr->min, new_vr->min)
	   || !FUNC4 (old_vr->max, new_vr->max)
	   || !FUNC3 (old_vr->equiv, new_vr->equiv);

  if (is_new)
    FUNC2 (old_vr, new_vr->type, new_vr->min, new_vr->max,
	             new_vr->equiv);

  FUNC0 (new_vr->equiv);
  new_vr->equiv = NULL;

  return is_new;
}