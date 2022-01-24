#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tipc_cfg_msg_hdr {int /*<<< orphan*/  tcm_type; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_4__ name; } ;
struct TYPE_6__ {TYPE_3__ name; } ;
struct sockaddr_tipc {TYPE_2__ addr; } ;
struct msghdr {TYPE_1__* msg_iov; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_5__ {int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EACCES ; 
 int EFAULT ; 
 scalar_t__ TIPC_CFG_SRV ; 
 scalar_t__ TIPC_RESERVED_TYPES ; 
 scalar_t__ TIPC_TOP_SRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tipc_cfg_msg_hdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sockaddr_tipc *dest, struct msghdr *m)
{
	struct tipc_cfg_msg_hdr hdr;

	if (FUNC2(dest->addr.name.name.type >= TIPC_RESERVED_TYPES))
		return 0;
	if (FUNC2(dest->addr.name.name.type == TIPC_TOP_SRV))
		return 0;
	if (FUNC2(dest->addr.name.name.type != TIPC_CFG_SRV))
		return -EACCES;

	if (FUNC1(&hdr, m->msg_iov[0].iov_base, sizeof(hdr)))
		return -EFAULT;
	if ((FUNC3(hdr.tcm_type) & 0xC000) && (!FUNC0(CAP_NET_ADMIN)))
		return -EACCES;

	return 0;
}