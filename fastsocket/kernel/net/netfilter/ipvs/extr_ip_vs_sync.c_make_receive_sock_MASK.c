#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* sk; TYPE_1__* ops; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_6__ {int sk_reuse; } ;
struct TYPE_5__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;

/* Variables and functions */
 struct socket* FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  ip_vs_backup_mcast_ifn ; 
 int FUNC1 (TYPE_2__*,struct in_addr*,int /*<<< orphan*/ ) ; 
 TYPE_3__ mcast_addr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int FUNC6 (struct socket*,struct sockaddr*,int) ; 
 int FUNC7 () ; 

__attribute__((used)) static struct socket * FUNC8(void)
{
	struct socket *sock;
	int result;

	/* First create a socket */
	result = FUNC4(PF_INET, SOCK_DGRAM, IPPROTO_UDP, &sock);
	if (result < 0) {
		FUNC2("Error during creation of socket; terminating\n");
		return FUNC0(result);
	}

	/* it is equivalent to the REUSEADDR option in user-space */
	sock->sk->sk_reuse = 1;
	result = FUNC7();
	if (result > 0)
		FUNC3(sock->sk, 0, result);

	result = sock->ops->bind(sock, (struct sockaddr *) &mcast_addr,
			sizeof(struct sockaddr));
	if (result < 0) {
		FUNC2("Error binding to the multicast addr\n");
		goto error;
	}

	/* join the multicast group */
	result = FUNC1(sock->sk,
			(struct in_addr *) &mcast_addr.sin_addr,
			ip_vs_backup_mcast_ifn);
	if (result < 0) {
		FUNC2("Error joining to the multicast group\n");
		goto error;
	}

	return sock;

  error:
	FUNC5(sock);
	return FUNC0(result);
}