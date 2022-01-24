#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zpool_props; int /*<<< orphan*/  zpool_old_config; int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(zpool_handle_t *zhp)
{
	FUNC1(zhp->zpool_config);
	FUNC1(zhp->zpool_old_config);
	FUNC1(zhp->zpool_props);
	FUNC0(zhp);
}