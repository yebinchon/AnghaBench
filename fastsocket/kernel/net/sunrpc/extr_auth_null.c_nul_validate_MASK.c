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
typedef  scalar_t__ u32 ;
struct rpc_task {int dummy; } ;
typedef  scalar_t__ rpc_authflavor_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ RPC_AUTH_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

__attribute__((used)) static __be32 *
FUNC2(struct rpc_task *task, __be32 *p)
{
	rpc_authflavor_t	flavor;
	u32			size;

	flavor = FUNC0(*p++);
	if (flavor != RPC_AUTH_NULL) {
		FUNC1("RPC: bad verf flavor: %u\n", flavor);
		return NULL;
	}

	size = FUNC0(*p++);
	if (size != 0) {
		FUNC1("RPC: bad verf size: %u\n", size);
		return NULL;
	}

	return p;
}