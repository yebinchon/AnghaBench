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
struct pevent {int /*<<< orphan*/  ld_offset; int /*<<< orphan*/  ld_size; } ;

/* Variables and functions */
 int FUNC0 (struct pevent*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC1(struct pevent *pevent, void *data)
{
	return FUNC0(pevent, data,
			      &pevent->ld_size, &pevent->ld_offset,
			      "common_migrate_disable");
}