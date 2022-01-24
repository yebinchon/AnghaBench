#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_6__ {int /*<<< orphan*/  dd_clones; int /*<<< orphan*/  dd_props_zapobj; int /*<<< orphan*/  dd_deleg_zapobj; int /*<<< orphan*/  dd_child_dir_zapobj; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(dsl_dir_t *dd)
{
	FUNC1(dd->dd_object);
	FUNC1(FUNC0(dd)->dd_child_dir_zapobj);
	FUNC1(FUNC0(dd)->dd_deleg_zapobj);
	FUNC1(FUNC0(dd)->dd_props_zapobj);
	FUNC1(FUNC0(dd)->dd_clones);
}