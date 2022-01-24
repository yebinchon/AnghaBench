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
struct TYPE_3__ {scalar_t__ vdev_ms_count; scalar_t__ vdev_id; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,char*,...) ; 

__attribute__((used)) static void
FUNC1(vdev_t *vd)
{
	(void) FUNC0("\tvdev %10llu\n\t%-10s%5llu   %-19s   %-15s   %-10s\n",
	    (u_longlong_t)vd->vdev_id,
	    "metaslabs", (u_longlong_t)vd->vdev_ms_count,
	    "offset", "spacemap", "free");
	(void) FUNC0("\t%15s   %19s   %15s   %10s\n",
	    "---------------", "-------------------",
	    "---------------", "-------------");
}