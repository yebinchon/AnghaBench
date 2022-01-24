#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mnt_special; } ;
struct TYPE_4__ {TYPE_1__ mtn_mt; } ;
typedef  TYPE_2__ mnttab_node_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *arg1, const void *arg2)
{
	const mnttab_node_t *mtn1 = (const mnttab_node_t *)arg1;
	const mnttab_node_t *mtn2 = (const mnttab_node_t *)arg2;
	int rv;

	rv = FUNC1(mtn1->mtn_mt.mnt_special, mtn2->mtn_mt.mnt_special);

	return (FUNC0(rv));
}