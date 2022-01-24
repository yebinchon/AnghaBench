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
struct constant_pool {int size; struct constant* execute; } ;
struct constant {struct constant* next; int /*<<< orphan*/  label; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3 (struct constant_pool *pool, rtx insn)
{
  struct constant *c;

  for (c = pool->execute; c != NULL; c = c->next)
    if (FUNC0 (insn) == FUNC0 (c->value))
      break;

  if (c == NULL)
    {
      c = (struct constant *) FUNC2 (sizeof *c);
      c->value = insn;
      c->label = FUNC1 ();
      c->next = pool->execute;
      pool->execute = c;
      pool->size += 6;
    }
}