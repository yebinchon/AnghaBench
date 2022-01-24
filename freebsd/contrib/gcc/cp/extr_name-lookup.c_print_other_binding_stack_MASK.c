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
struct cp_binding_level {struct cp_binding_level* level_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct cp_binding_level*) ; 
 int /*<<< orphan*/  FUNC2 (struct cp_binding_level*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3 (struct cp_binding_level *stack)
{
  struct cp_binding_level *level;
  for (level = stack; !FUNC1 (level); level = level->level_chain)
    {
      FUNC0 (stderr, "binding level %p\n", (void *) level);
      FUNC2 (level);
    }
}