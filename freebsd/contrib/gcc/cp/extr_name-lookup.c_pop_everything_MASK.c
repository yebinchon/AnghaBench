#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ kind; } ;

/* Variables and functions */
 scalar_t__ ENABLE_SCOPE_CHECKING ; 
 TYPE_1__* current_binding_level ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sk_class ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4 (void)
{
  if (ENABLE_SCOPE_CHECKING)
    FUNC3 ("XXX entering pop_everything ()\n");
  while (!FUNC2 ())
    {
      if (current_binding_level->kind == sk_class)
	FUNC0 ();
      else
	FUNC1 (0, 0, 0);
    }
  if (ENABLE_SCOPE_CHECKING)
    FUNC3 ("XXX leaving pop_everything ()\n");
}