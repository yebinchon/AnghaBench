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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 struct sctp_association* FUNC1 (union sctp_addr const*,union sctp_addr const*,struct sctp_transport**) ; 

int FUNC2(const union sctp_addr *laddr,
			 const union sctp_addr *paddr)
{
	struct sctp_association *asoc;
	struct sctp_transport *transport;

	if ((asoc = FUNC1(laddr, paddr, &transport))) {
		FUNC0(asoc);
		return 1;
	}

	return 0;
}