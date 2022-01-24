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
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_userlocks; scalar_t__ sk_bound_dev_if; } ;
struct inet_sock {scalar_t__ freebind; scalar_t__ transparent; scalar_t__ num; scalar_t__ rcv_saddr; scalar_t__ saddr; scalar_t__ dport; scalar_t__ daddr; int /*<<< orphan*/  sport; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 int /*<<< orphan*/  SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_BINDPORT_LOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ sysctl_ip_nonlocal_bind ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_in *addr = (struct sockaddr_in *)uaddr;
	struct inet_sock *isk = FUNC3(sk);
	unsigned short snum;
	int chk_addr_ret;
	int err;

	if (addr_len < sizeof(struct sockaddr_in))
		return -EINVAL;

	FUNC7("ping_v4_bind(sk=%p,sa_addr=%08x,sa_port=%d)\n",
		sk, addr->sin_addr.s_addr, FUNC5(addr->sin_port));

	chk_addr_ret = FUNC2(FUNC10(sk), addr->sin_addr.s_addr);
	if (addr->sin_addr.s_addr == FUNC0(INADDR_ANY))
		chk_addr_ret = RTN_LOCAL;

	if ((sysctl_ip_nonlocal_bind == 0 &&
	    isk->freebind == 0 && isk->transparent == 0 &&
	     chk_addr_ret != RTN_LOCAL) ||
	    chk_addr_ret == RTN_MULTICAST ||
	    chk_addr_ret == RTN_BROADCAST)
		return -EADDRNOTAVAIL;

	FUNC4(sk);

	err = -EINVAL;
	if (isk->num != 0)
		goto out;

	err = -EADDRINUSE;
	isk->rcv_saddr = isk->saddr = addr->sin_addr.s_addr;
	snum = FUNC5(addr->sin_port);
	if (FUNC6(sk, snum) != 0) {
		isk->saddr = isk->rcv_saddr = 0;
		goto out;
	}

	FUNC7("after bind(): num = %d, daddr = %pI4, dif = %d\n",
		(int)isk->num,
		&isk->rcv_saddr,
		(int)sk->sk_bound_dev_if);

	err = 0;
	if (isk->rcv_saddr)
		sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
	if (snum)
		sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
	isk->sport = FUNC1(isk->num);
	isk->daddr = 0;
	isk->dport = 0;
	FUNC9(sk);
out:
	FUNC8(sk);
	FUNC7("ping_v4_bind -> %d\n", err);
	return err;
}