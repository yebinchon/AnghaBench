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
struct xfrm_state {struct ipcomp_data* data; } ;
struct ipcomp_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipcomp_data*) ; 
 int /*<<< orphan*/  ipcomp_resource_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct ipcomp_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*) ; 

void FUNC5(struct xfrm_state *x)
{
	struct ipcomp_data *ipcd = x->data;
	if (!ipcd)
		return;
	FUNC4(x);
	FUNC2(&ipcomp_resource_mutex);
	FUNC0(ipcd);
	FUNC3(&ipcomp_resource_mutex);
	FUNC1(ipcd);
}