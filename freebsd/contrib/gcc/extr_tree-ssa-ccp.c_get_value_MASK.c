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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_5__ {scalar_t__ lattice_val; } ;
typedef  TYPE_1__ prop_value_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNINITIALIZED ; 
 TYPE_1__* const_val ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static prop_value_t *
FUNC2 (tree var, bool may_use_default_p)
{
  prop_value_t *val = &const_val[FUNC0 (var)];
  if (may_use_default_p && val->lattice_val == UNINITIALIZED)
    *val = FUNC1 (var);

  return val;
}