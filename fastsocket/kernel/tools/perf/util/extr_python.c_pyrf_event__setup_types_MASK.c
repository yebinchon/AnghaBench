#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tp_new; } ;

/* Variables and functions */
 int /*<<< orphan*/  PyType_GenericNew ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__ pyrf_comm_event__type ; 
 TYPE_1__ pyrf_lost_event__type ; 
 TYPE_1__ pyrf_mmap_event__type ; 
 TYPE_1__ pyrf_read_event__type ; 
 TYPE_1__ pyrf_sample_event__type ; 
 TYPE_1__ pyrf_task_event__type ; 
 TYPE_1__ pyrf_throttle_event__type ; 

__attribute__((used)) static int FUNC1(void)
{
	int err;
	pyrf_mmap_event__type.tp_new =
	pyrf_task_event__type.tp_new =
	pyrf_comm_event__type.tp_new =
	pyrf_lost_event__type.tp_new =
	pyrf_read_event__type.tp_new =
	pyrf_sample_event__type.tp_new =
	pyrf_throttle_event__type.tp_new = PyType_GenericNew;
	err = FUNC0(&pyrf_mmap_event__type);
	if (err < 0)
		goto out;
	err = FUNC0(&pyrf_lost_event__type);
	if (err < 0)
		goto out;
	err = FUNC0(&pyrf_task_event__type);
	if (err < 0)
		goto out;
	err = FUNC0(&pyrf_comm_event__type);
	if (err < 0)
		goto out;
	err = FUNC0(&pyrf_throttle_event__type);
	if (err < 0)
		goto out;
	err = FUNC0(&pyrf_read_event__type);
	if (err < 0)
		goto out;
	err = FUNC0(&pyrf_sample_event__type);
	if (err < 0)
		goto out;
out:
	return err;
}