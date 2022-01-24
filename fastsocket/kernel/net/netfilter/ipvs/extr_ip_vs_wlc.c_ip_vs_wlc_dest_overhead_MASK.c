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
struct ip_vs_dest {int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned int
FUNC1(struct ip_vs_dest *dest)
{
	/*
	 * We think the overhead of processing active connections is 256
	 * times higher than that of inactive connections in average. (This
	 * 256 times might not be accurate, we will change it later) We
	 * use the following formula to estimate the overhead now:
	 *		  dest->activeconns*256 + dest->inactconns
	 */
	return (FUNC0(&dest->activeconns) << 8) +
		FUNC0(&dest->inactconns);
}