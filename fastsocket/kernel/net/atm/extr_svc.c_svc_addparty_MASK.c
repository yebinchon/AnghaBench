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
struct socket {struct sock* sk; } ;
struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_err_soft; int /*<<< orphan*/  sk_sleep; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINPROGRESS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  as_addparty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ sigd ; 
 int /*<<< orphan*/  FUNC9 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr_atmsvc*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct sockaddr *sockaddr,
			int sockaddr_len, int flags)
{
	FUNC1(wait);
	struct sock *sk = sock->sk;
	struct atm_vcc *vcc = FUNC0(sock);
	int error;

	FUNC3(sk);
	FUNC8(ATM_VF_WAITING, &vcc->flags);
	FUNC5(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	FUNC9(vcc, as_addparty, NULL, NULL,
		 (struct sockaddr_atmsvc *) sockaddr);
	if (flags & O_NONBLOCK) {
		FUNC2(sk->sk_sleep, &wait);
		error = -EINPROGRESS;
		goto out;
	}
	FUNC4("svc_addparty added wait queue\n");
	while (FUNC10(ATM_VF_WAITING, &vcc->flags) && sigd) {
		FUNC7();
		FUNC5(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	}
	FUNC2(sk->sk_sleep, &wait);
	error = FUNC11(&sk->sk_err_soft, 0);
out:
	FUNC6(sk);
	return error;
}