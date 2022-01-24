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
typedef  int /*<<< orphan*/  xfs_off_t ;
struct TYPE_4__ {int /*<<< orphan*/  bt_bdi; } ;
typedef  TYPE_1__ xfs_buftarg_t ;

/* Variables and functions */
 int XBF_ASYNC ; 
 int XBF_DONT_BLOCK ; 
 int XBF_READ_AHEAD ; 
 int XBF_TRYLOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,size_t,int) ; 

void
FUNC2(
	xfs_buftarg_t		*target,
	xfs_off_t		ioff,
	size_t			isize)
{
	if (FUNC0(target->bt_bdi))
		return;

	FUNC1(target, ioff, isize,
		     XBF_TRYLOCK|XBF_ASYNC|XBF_READ_AHEAD|XBF_DONT_BLOCK);
}