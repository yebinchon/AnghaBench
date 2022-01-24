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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 struct inet_sock* FUNC0 (struct sock*) ; 

void FUNC1(struct sock *sk, struct sockaddr *uaddr)
{
	struct sockaddr_in *sin = (struct sockaddr_in *)uaddr;
	const struct inet_sock *inet = FUNC0(sk);

	sin->sin_family		= AF_INET;
	sin->sin_addr.s_addr	= inet->daddr;
	sin->sin_port		= inet->dport;
}