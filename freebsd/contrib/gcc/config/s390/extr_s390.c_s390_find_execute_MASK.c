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
struct constant_pool {int /*<<< orphan*/  label; struct constant* execute; } ;
struct constant {int /*<<< orphan*/  label; int /*<<< orphan*/  value; struct constant* next; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC1 (struct constant*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC5 (struct constant_pool *pool, rtx insn)
{
  struct constant *c;
  rtx offset;

  for (c = pool->execute; c != NULL; c = c->next)
    if (FUNC0 (insn) == FUNC0 (c->value))
      break;

  FUNC1 (c);

  offset = FUNC4 (Pmode, FUNC3 (Pmode, c->label),
				 FUNC3 (Pmode, pool->label));
  offset = FUNC2 (Pmode, offset);
  return offset;
}