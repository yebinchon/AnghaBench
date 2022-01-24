#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct invariant {int dummy; } ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct invariant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eq_invariant_expr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct invariant*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  hash_invariant_expr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invariant_p ; 
 int /*<<< orphan*/  invariants ; 

__attribute__((used)) static void
FUNC5 (void)
{
  unsigned i;
  struct invariant *inv;
  htab_t eq = FUNC3 (FUNC1 (invariant_p, invariants),
			   hash_invariant_expr, eq_invariant_expr, free);

  for (i = 0; FUNC0 (invariant_p, invariants, i, inv); i++)
    FUNC2 (eq, inv);

  FUNC4 (eq);
}