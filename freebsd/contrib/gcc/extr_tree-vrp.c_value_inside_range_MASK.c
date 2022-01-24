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
struct TYPE_3__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ value_range_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  LE_EXPR ; 
 scalar_t__ boolean_true_node ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int
FUNC3 (tree val, value_range_t *vr)
{
  tree cmp1, cmp2;

  FUNC1 ();

  cmp1 = FUNC0 (GE_EXPR, boolean_type_node, val, vr->min);
  if (!cmp1)
  {
    FUNC2 ();
    return -2;
  }

  cmp2 = FUNC0 (LE_EXPR, boolean_type_node, val, vr->max);

  FUNC2 ();

  if (!cmp2)
    return -2;

  return cmp1 == boolean_true_node && cmp2 == boolean_true_node;
}