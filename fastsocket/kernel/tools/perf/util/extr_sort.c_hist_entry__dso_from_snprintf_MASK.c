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
struct hist_entry {TYPE_2__* branch_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  map; } ;
struct TYPE_4__ {TYPE_1__ from; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,size_t,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct hist_entry *self, char *bf,
				    size_t size, unsigned int width)
{
	return FUNC0(self->branch_info->from.map,
					 bf, size, width);
}