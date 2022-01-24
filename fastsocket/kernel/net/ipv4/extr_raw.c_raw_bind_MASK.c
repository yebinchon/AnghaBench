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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct inet_sock {scalar_t__ saddr; scalar_t__ rcv_saddr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 scalar_t__ TCP_CLOSE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC1(sk);
	struct sockaddr_in *addr = (struct sockaddr_in *) uaddr;
	int ret = -EINVAL;
	int chk_addr_ret;

	if (sk->sk_state != TCP_CLOSE || addr_len < sizeof(struct sockaddr_in))
		goto out;
	chk_addr_ret = FUNC0(FUNC3(sk), addr->sin_addr.s_addr);
	ret = -EADDRNOTAVAIL;
	if (addr->sin_addr.s_addr && chk_addr_ret != RTN_LOCAL &&
	    chk_addr_ret != RTN_MULTICAST && chk_addr_ret != RTN_BROADCAST)
		goto out;
	inet->rcv_saddr = inet->saddr = addr->sin_addr.s_addr;
	if (chk_addr_ret == RTN_MULTICAST || chk_addr_ret == RTN_BROADCAST)
		inet->saddr = 0;  /* Use device */
	FUNC2(sk);
	ret = 0;
out:	return ret;
}