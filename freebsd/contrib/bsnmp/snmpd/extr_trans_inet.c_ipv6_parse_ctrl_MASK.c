#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockcred {scalar_t__ sc_euid; } ;
struct TYPE_6__ {int priv; scalar_t__ cred; } ;
struct TYPE_4__ {int /*<<< orphan*/  ipi6_ifindex; int /*<<< orphan*/  ipi6_addr; } ;
struct TYPE_5__ {TYPE_1__ a6; } ;
struct port_sock {TYPE_3__ input; TYPE_2__ ret_source; } ;
struct msghdr {int dummy; } ;
struct in6_pktinfo {int /*<<< orphan*/  ipi6_ifindex; int /*<<< orphan*/  ipi6_addr; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr const*) ; 
 struct cmsghdr* FUNC2 (struct msghdr const*,struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPPROTO_IPV6 ; 
 scalar_t__ IPV6_PKTINFO ; 
 scalar_t__ SCM_CREDS ; 
 scalar_t__ SOL_SOCKET ; 

__attribute__((used)) static void
FUNC4(struct port_sock *sock, const struct msghdr *msg)
{
	struct sockcred *cred = NULL;

	for (struct cmsghdr *cmsg = FUNC1(msg); cmsg != NULL;
	    cmsg = FUNC2(msg, cmsg)) {

		if (cmsg->cmsg_level == IPPROTO_IPV6 &&
		    cmsg->cmsg_type == IPV6_PKTINFO) {
			const struct in6_pktinfo *info =
			    (const struct in6_pktinfo *)(const void *)
			    FUNC0(cmsg);
			sock->ret_source.a6.ipi6_addr = info->ipi6_addr;
			sock->ret_source.a6.ipi6_ifindex =
			    !FUNC3(&info->ipi6_addr) ? 0:
			    info->ipi6_ifindex;
		} else if (cmsg->cmsg_level == SOL_SOCKET &&
		    cmsg->cmsg_type == SCM_CREDS) {
			cred = (struct sockcred *)(void *)FUNC0(cmsg);
		}
	}

	sock->input.priv = 0;
	if (sock->input.cred && cred)
		/* remote end has sent credentials */
		sock->input.priv = (cred->sc_euid == 0);
}