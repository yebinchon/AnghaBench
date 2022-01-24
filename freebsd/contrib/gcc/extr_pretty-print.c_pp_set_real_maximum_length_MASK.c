#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int maximum_length; scalar_t__ prefix; } ;
typedef  TYPE_1__ pretty_printer ;

/* Variables and functions */
 scalar_t__ DIAGNOSTICS_SHOW_PREFIX_NEVER ; 
 scalar_t__ DIAGNOSTICS_SHOW_PREFIX_ONCE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4 (pretty_printer *pp)
{
  /* If we're told not to wrap lines then do the obvious thing.  In case
     we'll emit prefix only once per message, it is appropriate
     not to increase unnecessarily the line-length cut-off.  */
  if (!FUNC0 (pp)
      || FUNC2 (pp) == DIAGNOSTICS_SHOW_PREFIX_ONCE
      || FUNC2 (pp) == DIAGNOSTICS_SHOW_PREFIX_NEVER)
    pp->maximum_length = FUNC1 (pp);
  else
    {
      int prefix_length = pp->prefix ? FUNC3 (pp->prefix) : 0;
      /* If the prefix is ridiculously too long, output at least
         32 characters.  */
      if (FUNC1 (pp) - prefix_length < 32)
	pp->maximum_length = FUNC1 (pp) + 32;
      else
	pp->maximum_length = FUNC1 (pp);
    }
}