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
struct unw_reg_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct unw_reg_state*,struct unw_reg_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct unw_reg_state*) ; 
 struct unw_reg_state* emergency_reg_state ; 
 int /*<<< orphan*/  emergency_reg_state_free ; 
 int /*<<< orphan*/  FUNC2 (struct unw_reg_state*) ; 
 int /*<<< orphan*/  reg_state_alloced ; 

__attribute__((used)) static void
FUNC3 (struct unw_reg_state *rs)
{
#ifdef ENABLE_MALLOC_CHECKING
  reg_state_alloced--;
#endif

  if (FUNC0 (emergency_reg_state, rs))
    FUNC1 (&emergency_reg_state_free, rs - emergency_reg_state);
  else
    FUNC2 (rs);
}