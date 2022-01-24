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
struct constant_pool {int /*<<< orphan*/  insns; struct constant_pool* next; struct constant_pool* execute; struct constant_pool** constants; } ;
struct constant {int /*<<< orphan*/  insns; struct constant* next; struct constant* execute; struct constant** constants; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NR_C_MODES ; 
 int /*<<< orphan*/  FUNC1 (struct constant_pool*) ; 

__attribute__((used)) static void
FUNC2 (struct constant_pool *pool)
{
  struct constant *c, *next;
  int i;

  for (i = 0; i < NR_C_MODES; i++)
    for (c = pool->constants[i]; c; c = next)
      {
	next = c->next;
	FUNC1 (c);
      }

  for (c = pool->execute; c; c = next)
    {
      next = c->next;
      FUNC1 (c);
    }

  FUNC0 (pool->insns);
  FUNC1 (pool);
}