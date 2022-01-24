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
struct TYPE_7__ {scalar_t__ sin_port; } ;
union sctp_addr {TYPE_3__ v4; } ;
struct sctp_transport {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  port; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; TYPE_4__ bind_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;
struct sctp_association {TYPE_1__ base; TYPE_2__ peer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sctp_transport* FUNC1 (struct sctp_association*,union sctp_addr const*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,union sctp_addr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct sctp_transport *FUNC4(struct sctp_association *asoc,
					   const union sctp_addr *laddr,
					   const union sctp_addr *paddr)
{
	struct sctp_transport *transport;

	if ((FUNC0(asoc->base.bind_addr.port) == laddr->v4.sin_port) &&
	    (FUNC0(asoc->peer.port) == paddr->v4.sin_port)) {
		transport = FUNC1(asoc, paddr);
		if (!transport)
			goto out;

		if (FUNC2(&asoc->base.bind_addr, laddr,
					 FUNC3(asoc->base.sk)))
			goto out;
	}
	transport = NULL;

out:
	return transport;
}