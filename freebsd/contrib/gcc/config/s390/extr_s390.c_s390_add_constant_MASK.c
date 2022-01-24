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
struct constant_pool {int /*<<< orphan*/  size; struct constant** constants; } ;
struct constant {struct constant* next; int /*<<< orphan*/  label; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NR_C_MODES ; 
 int* constant_modes ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (struct constant_pool *pool, rtx val, enum machine_mode mode)
{
  struct constant *c;
  int i;

  for (i = 0; i < NR_C_MODES; i++)
    if (constant_modes[i] == mode)
      break;
  FUNC1 (i != NR_C_MODES);

  for (c = pool->constants[i]; c != NULL; c = c->next)
    if (FUNC3 (val, c->value))
      break;

  if (c == NULL)
    {
      c = (struct constant *) FUNC4 (sizeof *c);
      c->value = val;
      c->label = FUNC2 ();
      c->next = pool->constants[i];
      pool->constants[i] = c;
      pool->size += FUNC0 (mode);
    }
}