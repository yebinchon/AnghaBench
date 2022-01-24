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
typedef  scalar_t__ u64 ;
struct machine {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dso*,struct machine*) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int FUNC3 (struct dso*,struct machine*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct dso *dso, struct machine *machine,
			    u64 *table_data, u64 *segbase, u64 *fde_count)
{
	int ret = -EINVAL, fd;
	u64 offset;

	fd = FUNC1(dso, machine);
	if (fd < 0)
		return -EINVAL;

	offset = FUNC2(fd, ".eh_frame_hdr");
	FUNC0(fd);

	if (offset)
		ret = FUNC3(dso, machine, offset,
					  table_data, segbase,
					  fde_count);

	/* TODO .debug_frame check if eh_frame_hdr fails */
	return ret;
}