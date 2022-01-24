#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  children; } ;
typedef  TYPE_1__ lang_group_statement_type ;

/* Variables and functions */
 int /*<<< orphan*/  lang_group_statement ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stat_ptr ; 

void
FUNC2 (void)
{
  lang_group_statement_type *g;

  g = FUNC1 (lang_group_statement, stat_ptr);
  FUNC0 (&g->children);
  stat_ptr = &g->children;
}