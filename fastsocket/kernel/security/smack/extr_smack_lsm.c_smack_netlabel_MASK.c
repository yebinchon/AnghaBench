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
struct socket_smack {scalar_t__ smk_out; } ;
struct sock {int /*<<< orphan*/  sk_family; struct socket_smack* sk_security; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 int SMACK_UNLABELED_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 
 scalar_t__ smack_net_ambient ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct netlbl_lsm_secattr*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, int labeled)
{
	struct socket_smack *ssp = sk->sk_security;
	struct netlbl_lsm_secattr secattr;
	int rc = 0;

	/*
	 * Usually the netlabel code will handle changing the
	 * packet labeling based on the label.
	 * The case of a single label host is different, because
	 * a single label host should never get a labeled packet
	 * even though the label is usually associated with a packet
	 * label.
	 */
	FUNC2();
	FUNC0(sk);

	if (ssp->smk_out == smack_net_ambient ||
	    labeled == SMACK_UNLABELED_SOCKET)
		FUNC6(sk);
	else {
		FUNC5(&secattr);
		FUNC8(ssp->smk_out, &secattr);
		rc = FUNC7(sk, sk->sk_family, &secattr);
		FUNC4(&secattr);
	}

	FUNC1(sk);
	FUNC3();

	return rc;
}