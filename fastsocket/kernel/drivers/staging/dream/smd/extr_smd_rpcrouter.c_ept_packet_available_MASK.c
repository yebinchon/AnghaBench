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
struct msm_rpc_endpoint {int /*<<< orphan*/  read_q_lock; int /*<<< orphan*/  read_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct msm_rpc_endpoint *ept)
{
	unsigned long flags;
	int ret;
	FUNC1(&ept->read_q_lock, flags);
	ret = !FUNC0(&ept->read_q);
	FUNC2(&ept->read_q_lock, flags);
	return ret;
}