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
struct map_groups {int dummy; } ;

/* Variables and functions */
 int MAP__NR_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct map_groups*,int) ; 

__attribute__((used)) static void FUNC1(struct map_groups *mg)
{
	int i;
	for (i = 0; i < MAP__NR_TYPES; ++i)
		FUNC0(mg, i);
}