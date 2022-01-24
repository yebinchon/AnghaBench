#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; int /*<<< orphan*/  equiv; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  VR_RANGE ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (value_range_t *vr, tree var)
{
  value_range_t *var_vr = FUNC2 (var);

  if (var_vr->type != VR_UNDEFINED && var_vr->type != VR_VARYING)
    FUNC1 (vr, var_vr);
  else
    FUNC3 (vr, VR_RANGE, var, var, NULL);

  FUNC0 (vr->equiv, var);
}