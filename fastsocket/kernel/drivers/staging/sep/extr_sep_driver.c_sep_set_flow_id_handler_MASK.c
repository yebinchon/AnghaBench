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
struct sep_flow_context_t {unsigned long flow_id; } ;
struct sep_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SEP_TEMP_FLOW_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sep_flow_context_t* FUNC2 (struct sep_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sep_mutex ; 

__attribute__((used)) static int FUNC3(struct sep_device *sep,
						unsigned long flow_id)
{
	int error = 0;
	struct sep_flow_context_t *flow_data_ptr;

	/* find the flow data structure that was just used for creating new flow
	   - its id should be default */

	FUNC0(&sep_mutex);
	flow_data_ptr = FUNC2(sep, SEP_TEMP_FLOW_ID);
	if (flow_data_ptr)
		flow_data_ptr->flow_id = flow_id;	/* set flow id */
	else
		error = -EINVAL;
	FUNC1(&sep_mutex);
	return error;
}