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
struct agent_expr {int size; int /*<<< orphan*/  scope; void* buf; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 void* FUNC0 (int) ; 

struct agent_expr *
FUNC1 (CORE_ADDR scope)
{
  struct agent_expr *x = FUNC0 (sizeof (*x));
  x->len = 0;
  x->size = 1;			/* Change this to a larger value once
				   reallocation code is tested.  */
  x->buf = FUNC0 (x->size);
  x->scope = scope;

  return x;
}