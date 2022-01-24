#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct unix_sock {TYPE_1__* addr; } ;
struct sock {int dummy; } ;
struct msghdr {int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_namelen; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct unix_sock* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct msghdr *msg, struct sock *sk)
{
	struct unix_sock *u = FUNC1(sk);

	msg->msg_namelen = 0;
	if (u->addr) {
		msg->msg_namelen = u->addr->len;
		FUNC0(msg->msg_name, u->addr->name, u->addr->len);
	}
}