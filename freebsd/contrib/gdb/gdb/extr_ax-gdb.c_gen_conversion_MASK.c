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
struct type {int dummy; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct agent_expr*,struct type*) ; 

__attribute__((used)) static void
FUNC3 (struct agent_expr *ax, struct type *from, struct type *to)
{
  /* Perhaps there is a more graceful way to state these rules.  */

  /* If we're converting to a narrower type, then we need to clear out
     the upper bits.  */
  if (FUNC0 (to) < FUNC0 (from))
    FUNC2 (ax, from);

  /* If the two values have equal width, but different signednesses,
     then we need to extend.  */
  else if (FUNC0 (to) == FUNC0 (from))
    {
      if (FUNC1 (from) != FUNC1 (to))
	FUNC2 (ax, to);
    }

  /* If we're converting to a wider type, and becoming unsigned, then
     we need to zero out any possible sign bits.  */
  else if (FUNC0 (to) > FUNC0 (from))
    {
      if (FUNC1 (to))
	FUNC2 (ax, to);
    }
}