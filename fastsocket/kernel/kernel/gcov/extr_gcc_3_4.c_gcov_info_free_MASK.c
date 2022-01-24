#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gcov_info {struct gcov_info* filename; struct gcov_info* functions; TYPE_1__* counts; } ;
struct TYPE_2__ {int /*<<< orphan*/  values; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 unsigned int FUNC1 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct gcov_info *info)
{
	unsigned int active = FUNC1(info);
	unsigned int i;

	for (i = 0; i < active ; i++)
		FUNC2(info->counts[i].values);
	FUNC0(info->functions);
	FUNC0(info->filename);
	FUNC0(info);
}