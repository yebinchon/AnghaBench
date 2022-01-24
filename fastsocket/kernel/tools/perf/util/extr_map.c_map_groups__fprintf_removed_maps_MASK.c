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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t MAP__NR_TYPES ; 
 scalar_t__ FUNC0 (struct map_groups*,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC1(struct map_groups *mg,
					       int verbose, FILE *fp)
{
	size_t printed = 0, i;
	for (i = 0; i < MAP__NR_TYPES; ++i)
		printed += FUNC0(mg, i, verbose, fp);
	return printed;
}