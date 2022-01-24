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
typedef  int uint32_t ;
struct rpc_request_hdr {void* procedure; void* vers; void* prog; void* rpc_vers; void* xid; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_request_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next_xid ; 

void FUNC3(struct rpc_request_hdr *hdr, uint32_t prog,
		       uint32_t vers, uint32_t proc)
{
	FUNC2(hdr, 0, sizeof(struct rpc_request_hdr));
	hdr->xid = FUNC1(FUNC0(1, &next_xid));
	hdr->rpc_vers = FUNC1(2);
	hdr->prog = FUNC1(prog);
	hdr->vers = FUNC1(vers);
	hdr->procedure = FUNC1(proc);
}