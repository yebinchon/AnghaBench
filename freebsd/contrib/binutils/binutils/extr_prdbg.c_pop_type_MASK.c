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
struct pr_stack {char* type; struct pr_stack* next; } ;
struct pr_handle {struct pr_stack* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pr_stack*) ; 

__attribute__((used)) static char *
FUNC2 (struct pr_handle *info)
{
  struct pr_stack *o;
  char *ret;

  FUNC0 (info->stack != NULL);

  o = info->stack;
  info->stack = o->next;
  ret = o->type;
  FUNC1 (o);

  return ret;
}