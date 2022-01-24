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
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;

/* Variables and functions */
 struct sctp_association* FUNC0 (struct sctp_endpoint const*,union sctp_addr const*,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct sctp_association *FUNC3(
	const struct sctp_endpoint *ep,
	const union sctp_addr *paddr,
	struct sctp_transport **transport)
{
	struct sctp_association *asoc;

	FUNC1();
	asoc = FUNC0(ep, paddr, transport);
	FUNC2();

	return asoc;
}