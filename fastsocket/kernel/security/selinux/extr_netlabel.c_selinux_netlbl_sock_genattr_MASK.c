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
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {struct netlbl_lsm_secattr* nlbl_secattr; int /*<<< orphan*/  sid; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct netlbl_lsm_secattr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlbl_lsm_secattr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct netlbl_lsm_secattr*) ; 

__attribute__((used)) static struct netlbl_lsm_secattr *FUNC3(struct sock *sk)
{
	int rc;
	struct sk_security_struct *sksec = sk->sk_security;
	struct netlbl_lsm_secattr *secattr;

	if (sksec->nlbl_secattr != NULL)
		return sksec->nlbl_secattr;

	secattr = FUNC0(GFP_ATOMIC);
	if (secattr == NULL)
		return NULL;
	rc = FUNC2(sksec->sid, secattr);
	if (rc != 0) {
		FUNC1(secattr);
		return NULL;
	}
	sksec->nlbl_secattr = secattr;

	return secattr;
}