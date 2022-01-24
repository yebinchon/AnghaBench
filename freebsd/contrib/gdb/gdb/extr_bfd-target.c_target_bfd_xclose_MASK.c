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
struct target_ops {struct target_ops* to_sections; int /*<<< orphan*/  to_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct target_ops*) ; 

void
FUNC2 (struct target_ops *t, int quitting)
{
  FUNC0 (t->to_data);
  FUNC1 (t->to_sections);
  FUNC1 (t);
}