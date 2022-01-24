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
struct socket {TYPE_1__* ops; int /*<<< orphan*/  sk; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* connect ) (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct socket* FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_vs_master_mcast_ifn ; 
 int /*<<< orphan*/  mcast_addr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int FUNC9 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 

__attribute__((used)) static struct socket * FUNC11(void)
{
	struct socket *sock;
	int result;

	/* First create a socket */
	result = FUNC7(PF_INET, SOCK_DGRAM, IPPROTO_UDP, &sock);
	if (result < 0) {
		FUNC2("Error during creation of socket; terminating\n");
		return FUNC0(result);
	}

	result = FUNC3(sock->sk, ip_vs_master_mcast_ifn);
	if (result < 0) {
		FUNC2("Error setting outbound mcast interface\n");
		goto error;
	}

	FUNC4(sock->sk, 0);
	FUNC5(sock->sk, 1);
	result = FUNC10();
	if (result > 0)
		FUNC6(sock->sk, 1, result);

	result = FUNC1(sock, ip_vs_master_mcast_ifn);
	if (result < 0) {
		FUNC2("Error binding address of the mcast interface\n");
		goto error;
	}

	result = sock->ops->connect(sock, (struct sockaddr *) &mcast_addr,
			sizeof(struct sockaddr), 0);
	if (result < 0) {
		FUNC2("Error connecting to the multicast addr\n");
		goto error;
	}

	return sock;

  error:
	FUNC8(sock);
	return FUNC0(result);
}