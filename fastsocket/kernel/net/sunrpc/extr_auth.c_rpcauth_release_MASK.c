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
struct rpc_auth {TYPE_1__* au_ops; int /*<<< orphan*/  au_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct rpc_auth*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_auth*) ; 

void
FUNC2(struct rpc_auth *auth)
{
	if (!FUNC0(&auth->au_count))
		return;
	auth->au_ops->destroy(auth);
}