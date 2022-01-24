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
typedef  int /*<<< orphan*/  uint32_t ;
struct rr_server {int dummy; } ;
struct msm_rpc_endpoint {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct rr_server*) ; 
 struct rr_server* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct msm_rpc_endpoint *ept,
			      uint32_t prog, uint32_t vers)
{
	struct rr_server *server;
	server = FUNC1(prog, vers);

	if (!server)
		return -ENOENT;
	FUNC0(server);
	return 0;
}