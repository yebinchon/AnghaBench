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
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;

/* Variables and functions */

zpool_handle_t *
FUNC0(const zfs_handle_t *zhp)
{
	return (zhp->zpool_hdl);
}