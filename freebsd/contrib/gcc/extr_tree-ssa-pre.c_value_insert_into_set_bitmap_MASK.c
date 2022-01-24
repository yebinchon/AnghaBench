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
typedef  TYPE_1__* value_set_t ;
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/ * values; int /*<<< orphan*/  indexed; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grand_bitmap_obstack ; 

__attribute__((used)) static inline void
FUNC4 (value_set_t set, tree v)
{
  FUNC3 (set->indexed);

  if (set->values == NULL)
    set->values = FUNC0 (&grand_bitmap_obstack);

  FUNC2 (set->values, FUNC1 (v));
}