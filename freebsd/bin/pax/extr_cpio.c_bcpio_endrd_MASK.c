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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  TRAILER ;
typedef  int /*<<< orphan*/  HD_BCPIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

off_t
FUNC1(void)
{
	return((off_t)(sizeof(HD_BCPIO) + sizeof(TRAILER) +
		(FUNC0(sizeof(HD_BCPIO) + sizeof(TRAILER)))));
}