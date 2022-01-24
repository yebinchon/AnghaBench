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
struct ipc_params {int dummy; } ;
struct ipc_ops {int (* getnew ) (struct ipc_namespace*,struct ipc_params*) ;} ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int /*<<< orphan*/  rw_mutex; int /*<<< orphan*/  ipcs_idr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ipc_namespace*,struct ipc_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ipc_namespace *ns, struct ipc_ids *ids,
		struct ipc_ops *ops, struct ipc_params *params)
{
	int err;
retry:
	err = FUNC1(&ids->ipcs_idr, GFP_KERNEL);

	if (!err)
		return -ENOMEM;

	FUNC0(&ids->rw_mutex);
	err = ops->getnew(ns, params);
	FUNC3(&ids->rw_mutex);

	if (err == -EAGAIN)
		goto retry;

	return err;
}