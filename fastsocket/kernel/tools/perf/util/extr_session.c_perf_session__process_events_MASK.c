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
struct perf_tool {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data_offset; } ;
struct perf_session {int /*<<< orphan*/  size; TYPE_1__ header; int /*<<< orphan*/  fd_pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct perf_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_tool*) ; 
 int FUNC1 (struct perf_session*,struct perf_tool*) ; 
 int /*<<< orphan*/ * FUNC2 (struct perf_session*) ; 

int FUNC3(struct perf_session *self,
				 struct perf_tool *tool)
{
	int err;

	if (FUNC2(self) == NULL)
		return -ENOMEM;

	if (!self->fd_pipe)
		err = FUNC0(self,
						     self->header.data_offset,
						     self->header.data_size,
						     self->size, tool);
	else
		err = FUNC1(self, tool);

	return err;
}