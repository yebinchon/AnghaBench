#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_sco {int /*<<< orphan*/  sco_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 int /*<<< orphan*/  BDADDR_ANY ; 
 scalar_t__ BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_OPEN ; 
 int EADDRINUSE ; 
 int EBADFD ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 TYPE_1__ sco_sk_list ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct sockaddr *addr, int addr_len)
{
	struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
	struct sock *sk = sock->sk;
	bdaddr_t *src = &sa->sco_bdaddr;
	int err = 0;

	FUNC0("sk %p %s", sk, FUNC4(&sa->sco_bdaddr));

	if (!addr || addr->sa_family != AF_BLUETOOTH)
		return -EINVAL;

	FUNC6(sk);

	if (sk->sk_state != BT_OPEN) {
		err = -EBADFD;
		goto done;
	}

	FUNC8(&sco_sk_list.lock);

	if (FUNC2(src, BDADDR_ANY) && FUNC1(src)) {
		err = -EADDRINUSE;
	} else {
		/* Save source address */
		FUNC3(&FUNC5(sk)->src, &sa->sco_bdaddr);
		sk->sk_state = BT_BOUND;
	}

	FUNC9(&sco_sk_list.lock);

done:
	FUNC7(sk);
	return err;
}