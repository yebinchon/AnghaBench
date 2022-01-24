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
struct TYPE_3__ {int /*<<< orphan*/  dtsp_pdescs; } ;
typedef  TYPE_1__ dt_sugar_parse_t ;
typedef  int /*<<< orphan*/  dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_TOK_ASGN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static dt_node_t *
FUNC5(dt_sugar_parse_t *dp)
{
	dt_node_t *stmt = FUNC3(FUNC2(DT_TOK_ASGN,
	    FUNC4(), FUNC1(0)));
	return (FUNC0(dp->dtsp_pdescs, NULL, stmt));
}