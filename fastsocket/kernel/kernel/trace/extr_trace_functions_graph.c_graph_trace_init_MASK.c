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
struct trace_array {int dummy; } ;

/* Variables and functions */
 struct trace_array* graph_array ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_graph_entry ; 
 int /*<<< orphan*/  trace_graph_return ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct trace_array *tr)
{
	int ret;

	graph_array = tr;
	ret = FUNC0(&trace_graph_return,
				    &trace_graph_entry);
	if (ret)
		return ret;
	FUNC1();

	return 0;
}