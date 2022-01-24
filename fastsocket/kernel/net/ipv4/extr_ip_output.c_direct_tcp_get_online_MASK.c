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
struct direct_tcp_stat {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ cpu_id ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  direct_tcp_stats ; 
 scalar_t__ nr_cpu_ids ; 
 struct direct_tcp_stat* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct direct_tcp_stat *FUNC2(loff_t *pos)
{
	struct direct_tcp_stat *rc = NULL;

	while (*pos < nr_cpu_ids)
		if (FUNC0(*pos)) {
			rc = FUNC1(direct_tcp_stats, *pos);
			break;
		} else
			++*pos;
	cpu_id = *pos;

	return rc;
}