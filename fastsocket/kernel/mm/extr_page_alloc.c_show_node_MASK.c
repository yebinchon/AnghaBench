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
struct zone {int dummy; } ;

/* Variables and functions */
 scalar_t__ NUMA_BUILD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 

__attribute__((used)) static inline void FUNC2(struct zone *zone)
{
	if (NUMA_BUILD)
		FUNC0("Node %d ", FUNC1(zone));
}