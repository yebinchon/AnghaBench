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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC1 (struct map_groups*,int,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct map_groups*,int,int /*<<< orphan*/ *) ; 

size_t FUNC3(struct map_groups *mg, int verbose, FILE *fp)
{
	size_t printed = FUNC1(mg, verbose, fp);
	printed += FUNC0(fp, "Removed maps:\n");
	return printed + FUNC2(mg, verbose, fp);
}