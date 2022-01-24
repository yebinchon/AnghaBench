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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {scalar_t__ nlbl_state; struct netlbl_lsm_secattr* nlbl_secattr; } ;
struct sk_buff {struct sock* sk; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 scalar_t__ NLBL_REQSKB ; 
 int /*<<< orphan*/  FUNC0 (struct netlbl_lsm_secattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_lsm_secattr*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 

int FUNC4(struct sk_buff *skb,
				 u16 family,
				 u32 sid)
{
	int rc;
	struct netlbl_lsm_secattr secattr_storage;
	struct netlbl_lsm_secattr *secattr = NULL;
	struct sock *sk;

	/* if this is a locally generated packet check to see if it is already
	 * being labeled by it's parent socket, if it is just exit */
	sk = skb->sk;
	if (sk != NULL) {
		struct sk_security_struct *sksec = sk->sk_security;
		if (sksec->nlbl_state != NLBL_REQSKB)
			return 0;
		secattr = sksec->nlbl_secattr;
	}
	if (secattr == NULL) {
		secattr = &secattr_storage;
		FUNC1(secattr);
		rc = FUNC3(sid, secattr);
		if (rc != 0)
			goto skbuff_setsid_return;
	}

	rc = FUNC2(skb, family, secattr);

skbuff_setsid_return:
	if (secattr == &secattr_storage)
		FUNC0(secattr);
	return rc;
}