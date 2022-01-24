#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockcred {scalar_t__ sc_euid; } ;
struct TYPE_4__ {int priv; scalar_t__ cred; } ;
struct TYPE_3__ {int /*<<< orphan*/  a4; } ;
struct port_sock {TYPE_2__ input; TYPE_1__ ret_source; } ;
struct msghdr {int dummy; } ;
struct in_addr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr const*) ; 
 struct cmsghdr* FUNC2 (struct msghdr const*,struct cmsghdr*) ; 
 scalar_t__ IPPROTO_IP ; 
 scalar_t__ IP_RECVDSTADDR ; 
 scalar_t__ SCM_CREDS ; 
 scalar_t__ SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC4(struct port_sock *sock, const struct msghdr *msg)
{
	struct sockcred *cred = NULL;

	for (struct cmsghdr *cmsg = FUNC1(msg); cmsg != NULL;
	    cmsg = FUNC2(msg, cmsg)) {

		if (cmsg->cmsg_level == IPPROTO_IP &&
		    cmsg->cmsg_type == IP_RECVDSTADDR) {
			FUNC3(&sock->ret_source.a4, FUNC0(cmsg),
			    sizeof(struct in_addr));

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