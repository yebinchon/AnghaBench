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
typedef  scalar_t__ u32 ;
struct socket {struct sock* sk; } ;
struct sock {int sk_family; } ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int SMK_LABELLEN ; 
 int /*<<< orphan*/  FUNC0 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_lsm_secattr*) ; 
 int FUNC2 (struct sk_buff*,int,struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct netlbl_lsm_secattr*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock,
					 struct sk_buff *skb, u32 *secid)

{
	struct netlbl_lsm_secattr secattr;
	struct sock *sk;
	char smack[SMK_LABELLEN];
	int family = PF_INET;
	u32 s;
	int rc;

	/*
	 * Only works for families with packets.
	 */
	if (sock != NULL) {
		sk = sock->sk;
		if (sk->sk_family != PF_INET && sk->sk_family != PF_INET6)
			return 0;
		family = sk->sk_family;
	}
	/*
	 * Translate what netlabel gave us.
	 */
	FUNC1(&secattr);
	rc = FUNC2(skb, family, &secattr);
	if (rc == 0)
		FUNC3(&secattr, smack);
	FUNC0(&secattr);

	/*
	 * Give up if we couldn't get anything
	 */
	if (rc != 0)
		return rc;

	s = FUNC4(smack);
	if (s == 0)
		return -EINVAL;

	*secid = s;
	return 0;
}