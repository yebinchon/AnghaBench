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
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int ENOMEM ; 
 scalar_t__ NLBL_CONNLABELED ; 
 scalar_t__ NLBL_REQSKB ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct sock*,struct sockaddr*,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 struct netlbl_lsm_secattr* FUNC6 (struct sock*) ; 

int FUNC7(struct sock *sk, struct sockaddr *addr)
{
	int rc;
	struct sk_security_struct *sksec = sk->sk_security;
	struct netlbl_lsm_secattr *secattr;

	if (sksec->nlbl_state != NLBL_REQSKB &&
	    sksec->nlbl_state != NLBL_CONNLABELED)
		return 0;

	FUNC2();
	FUNC0(sk);

	/* connected sockets are allowed to disconnect when the address family
	 * is set to AF_UNSPEC, if that is what is happening we want to reset
	 * the socket */
	if (addr->sa_family == AF_UNSPEC) {
		FUNC5(sk);
		sksec->nlbl_state = NLBL_REQSKB;
		rc = 0;
		goto socket_connect_return;
	}
	secattr = FUNC6(sk);
	if (secattr == NULL) {
		rc = -ENOMEM;
		goto socket_connect_return;
	}
	rc = FUNC4(sk, addr, secattr);
	if (rc == 0)
		sksec->nlbl_state = NLBL_CONNLABELED;

socket_connect_return:
	FUNC1(sk);
	FUNC3();
	return rc;
}