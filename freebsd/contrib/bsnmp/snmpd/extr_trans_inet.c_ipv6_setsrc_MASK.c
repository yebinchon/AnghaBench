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
struct TYPE_2__ {int /*<<< orphan*/  a6; } ;
struct port_sock {TYPE_1__ ret_source; } ;
struct msghdr {int /*<<< orphan*/  msg_controllen; } ;
struct in6_pktinfo {int dummy; } ;
struct cmsghdr {int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_PKTINFO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct port_sock *sock, struct msghdr *msg)
{
	struct cmsghdr *cmsg = FUNC1(msg);

	/* select outgoing interface by setting source address */
	cmsg->cmsg_level = IPPROTO_IPV6;
	cmsg->cmsg_type = IPV6_PKTINFO;
	cmsg->cmsg_len = FUNC2(sizeof(struct in6_pktinfo));
	FUNC4(FUNC0(cmsg), &sock->ret_source.a6,
	    sizeof(struct in6_pktinfo));

	msg->msg_controllen = FUNC3(sizeof(struct in6_pktinfo));
}