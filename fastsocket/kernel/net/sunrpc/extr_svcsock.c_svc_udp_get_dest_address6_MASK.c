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
struct TYPE_2__ {int /*<<< orphan*/  addr6; } ;
struct svc_rqst {TYPE_1__ rq_daddr; } ;
struct in6_pktinfo {int /*<<< orphan*/  ipi6_addr; } ;
struct cmsghdr {scalar_t__ cmsg_type; } ;

/* Variables and functions */
 struct in6_pktinfo* FUNC0 (struct cmsghdr*) ; 
 scalar_t__ IPV6_PKTINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct svc_rqst *rqstp,
				     struct cmsghdr *cmh)
{
	struct in6_pktinfo *pki = FUNC0(cmh);
	if (cmh->cmsg_type != IPV6_PKTINFO)
		return 0;
	FUNC1(&rqstp->rq_daddr.addr6, &pki->ipi6_addr);
	return 1;
}