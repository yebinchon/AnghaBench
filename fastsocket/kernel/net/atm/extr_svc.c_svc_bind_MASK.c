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
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_atmsvc {scalar_t__ sas_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_err; int /*<<< orphan*/  sk_sleep; } ;
struct atm_vcc {int /*<<< orphan*/  flags; struct sockaddr_atmsvc local; } ;

/* Variables and functions */
 scalar_t__ AF_ATMSVC ; 
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_BOUND ; 
 int /*<<< orphan*/  ATM_VF_HASQOS ; 
 int /*<<< orphan*/  ATM_VF_REGIS ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAFNOSUPPORT ; 
 int EBADFD ; 
 int EINVAL ; 
 int EISCONN ; 
 int EUNATCH ; 
 scalar_t__ SS_CONNECTED ; 
 scalar_t__ SS_UNCONNECTED ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_bind ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ sigd ; 
 int /*<<< orphan*/  FUNC9 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr_atmsvc*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC11(struct socket *sock,struct sockaddr *sockaddr,
    int sockaddr_len)
{
	FUNC1(wait);
	struct sock *sk = sock->sk;
	struct sockaddr_atmsvc *addr;
	struct atm_vcc *vcc;
	int error;

	if (sockaddr_len != sizeof(struct sockaddr_atmsvc))
		return -EINVAL;
	FUNC4(sk);
	if (sock->state == SS_CONNECTED) {
		error = -EISCONN;
		goto out;
	}
	if (sock->state != SS_UNCONNECTED) {
		error = -EINVAL;
		goto out;
	}
	vcc = FUNC0(sock);
	addr = (struct sockaddr_atmsvc *) sockaddr;
	if (addr->sas_family != AF_ATMSVC) {
		error = -EAFNOSUPPORT;
		goto out;
	}
	FUNC2(ATM_VF_BOUND,&vcc->flags);
	    /* failing rebind will kill old binding */
	/* @@@ check memory (de)allocation on rebind */
	if (!FUNC10(ATM_VF_HASQOS,&vcc->flags)) {
		error = -EBADFD;
		goto out;
	}
	vcc->local = *addr;
	FUNC8(ATM_VF_WAITING, &vcc->flags);
	FUNC5(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
	FUNC9(vcc,as_bind,NULL,NULL,&vcc->local);
	while (FUNC10(ATM_VF_WAITING, &vcc->flags) && sigd) {
		FUNC7();
		FUNC5(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
	}
	FUNC3(sk->sk_sleep, &wait);
	FUNC2(ATM_VF_REGIS,&vcc->flags); /* doesn't count */
	if (!sigd) {
		error = -EUNATCH;
		goto out;
	}
	if (!sk->sk_err)
		FUNC8(ATM_VF_BOUND,&vcc->flags);
	error = -sk->sk_err;
out:
	FUNC6(sk);
	return error;
}