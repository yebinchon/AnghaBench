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
struct socket {int /*<<< orphan*/ * sk; } ;

/* Variables and functions */
 int PF_INET ; 
 int /*<<< orphan*/  SMACK_CIPSO_SOCKET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct socket *sock, int family,
				    int type, int protocol, int kern)
{
	if (family != PF_INET || sock->sk == NULL)
		return 0;
	/*
	 * Set the outbound netlbl.
	 */
	return FUNC0(sock->sk, SMACK_CIPSO_SOCKET);
}