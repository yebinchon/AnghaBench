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
typedef  int tree ;
typedef  TYPE_1__* bitmap_set_t ;
struct TYPE_3__ {int /*<<< orphan*/  expressions; int /*<<< orphan*/  values; } ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7 (bitmap_set_t set, tree expr)
{
  tree val;
  /* XXX: For now, we only let SSA_NAMES into the bitmap sets.  */
  FUNC4 (FUNC1 (expr) == SSA_NAME);
  val = FUNC5 (expr);

  FUNC4 (val);
  if (!FUNC6 (val))
  {
    FUNC3 (set->values, FUNC2 (val));
    FUNC3 (set->expressions, FUNC0 (expr));
  }
}