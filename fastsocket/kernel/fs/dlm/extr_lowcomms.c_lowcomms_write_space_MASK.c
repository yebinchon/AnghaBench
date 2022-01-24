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
struct sock {int dummy; } ;
struct connection {int /*<<< orphan*/  swork; int /*<<< orphan*/  flags; TYPE_2__* sock; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; TYPE_1__* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_write_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_APP_LIMITED ; 
 int /*<<< orphan*/  CF_WRITE_PENDING ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_workqueue ; 
 struct connection* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct connection *con = FUNC2(sk);

	if (!con)
		return;

	FUNC0(SOCK_NOSPACE, &con->sock->flags);

	if (FUNC3(CF_APP_LIMITED, &con->flags)) {
		con->sock->sk->sk_write_pending--;
		FUNC0(SOCK_ASYNC_NOSPACE, &con->sock->flags);
	}

	if (!FUNC4(CF_WRITE_PENDING, &con->flags))
		FUNC1(send_workqueue, &con->swork);
}