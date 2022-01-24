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
typedef  int /*<<< orphan*/  u32 ;
struct socket {struct sock* sk; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_family; int /*<<< orphan*/  sk_protocol; } ;
struct inode_security_struct {scalar_t__ sclass; int /*<<< orphan*/  sid; } ;
struct TYPE_4__ {scalar_t__ family; int /*<<< orphan*/  dport; } ;
struct TYPE_5__ {TYPE_1__ net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct TYPE_6__ {struct inode_security_struct* i_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_SOCKET__NAME_CONNECT ; 
 int EINVAL ; 
 int /*<<< orphan*/  NET ; 
 scalar_t__ PF_INET ; 
 scalar_t__ SECCLASS_DCCP_SOCKET ; 
 scalar_t__ SECCLASS_TCP_SOCKET ; 
 int SIN6_LEN_RFC2133 ; 
 int /*<<< orphan*/  SOCKET__CONNECT ; 
 TYPE_3__* FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  TCP_SOCKET__NAME_CONNECT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 unsigned short FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sock*,struct sockaddr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sockaddr *address, int addrlen)
{
	struct sock *sk = sock->sk;
	struct inode_security_struct *isec;
	int err;

	err = FUNC7(current, sock, SOCKET__CONNECT);
	if (err)
		return err;

	/*
	 * If a TCP or DCCP socket, check name_connect permission for the port.
	 */
	isec = FUNC1(sock)->i_security;
	if (isec->sclass == SECCLASS_TCP_SOCKET ||
	    isec->sclass == SECCLASS_DCCP_SOCKET) {
		struct common_audit_data ad;
		struct sockaddr_in *addr4 = NULL;
		struct sockaddr_in6 *addr6 = NULL;
		unsigned short snum;
		u32 sid, perm;

		if (sk->sk_family == PF_INET) {
			addr4 = (struct sockaddr_in *)address;
			if (addrlen < sizeof(struct sockaddr_in))
				return -EINVAL;
			snum = FUNC4(addr4->sin_port);
		} else {
			addr6 = (struct sockaddr_in6 *)address;
			if (addrlen < SIN6_LEN_RFC2133)
				return -EINVAL;
			snum = FUNC4(addr6->sin6_port);
		}

		err = FUNC5(sk->sk_protocol, snum, &sid);
		if (err)
			goto out;

		perm = (isec->sclass == SECCLASS_TCP_SOCKET) ?
		       TCP_SOCKET__NAME_CONNECT : DCCP_SOCKET__NAME_CONNECT;

		FUNC0(&ad, NET);
		ad.u.net.dport = FUNC3(snum);
		ad.u.net.family = sk->sk_family;
		err = FUNC2(isec->sid, sid, isec->sclass, perm, &ad);
		if (err)
			goto out;
	}

	err = FUNC6(sk, address);

out:
	return err;
}