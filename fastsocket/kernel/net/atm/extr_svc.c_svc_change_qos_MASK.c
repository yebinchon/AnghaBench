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
struct sock {int sk_err; int /*<<< orphan*/  sk_sleep; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  local; } ;
struct atm_qos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EUNATCH ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_modify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ sigd ; 
 int /*<<< orphan*/  FUNC5 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct atm_qos*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC6 (struct atm_vcc*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

int FUNC8(struct atm_vcc *vcc,struct atm_qos *qos)
{
	struct sock *sk = FUNC6(vcc);
	FUNC0(wait);

	FUNC4(ATM_VF_WAITING, &vcc->flags);
	FUNC2(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
	FUNC5(vcc,as_modify,NULL,NULL,&vcc->local,qos,0);
	while (FUNC7(ATM_VF_WAITING, &vcc->flags) &&
	       !FUNC7(ATM_VF_RELEASED, &vcc->flags) && sigd) {
		FUNC3();
		FUNC2(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
	}
	FUNC1(sk->sk_sleep, &wait);
	if (!sigd) return -EUNATCH;
	return -sk->sk_err;
}