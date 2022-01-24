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
typedef  TYPE_1__* constraint_t ;
struct TYPE_4__ {int /*<<< orphan*/  rhs; int /*<<< orphan*/  lhs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1 (const constraint_t a, const constraint_t b)
{
  if (FUNC0 (a->lhs, b->lhs))
    return true;
  else if (FUNC0 (b->lhs, a->lhs))
    return false;
  else
    return FUNC0 (a->rhs, b->rhs);
}