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
struct agent_expr {struct agent_expr* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agent_expr*) ; 

void
FUNC1 (struct agent_expr *x)
{
  FUNC0 (x->buf);
  FUNC0 (x);
}