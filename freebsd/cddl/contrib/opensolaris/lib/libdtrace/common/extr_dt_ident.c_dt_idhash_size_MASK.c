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
typedef  int /*<<< orphan*/  ulong_t ;
struct TYPE_3__ {int /*<<< orphan*/  dh_nelems; } ;
typedef  TYPE_1__ dt_idhash_t ;

/* Variables and functions */

ulong_t
FUNC0(const dt_idhash_t *dhp)
{
	return (dhp->dh_nelems);
}