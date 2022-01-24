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
struct poll_table_struct {int dummy; } ;
struct msm_rpc_endpoint {int /*<<< orphan*/  read_q; int /*<<< orphan*/  wait_q; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *filp,
				   struct poll_table_struct *wait)
{
	struct msm_rpc_endpoint *ept;
	unsigned mask = 0;
	ept = (struct msm_rpc_endpoint *) filp->private_data;

	/* If there's data already in the read queue, return POLLIN.
	 * Else, wait for the requested amount of time, and check again.
	 */

	if (!FUNC0(&ept->read_q))
		mask |= POLLIN;

	if (!mask) {
		FUNC1(filp, &ept->wait_q, wait);
		if (!FUNC0(&ept->read_q))
			mask |= POLLIN;
	}

	return mask;
}