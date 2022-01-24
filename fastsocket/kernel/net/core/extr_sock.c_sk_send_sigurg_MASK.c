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
struct sock {TYPE_2__* sk_socket; } ;
struct TYPE_4__ {TYPE_1__* file; } ;
struct TYPE_3__ {int /*<<< orphan*/  f_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_PRI ; 
 int /*<<< orphan*/  SOCK_WAKE_URG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct sock *sk)
{
	if (sk->sk_socket && sk->sk_socket->file)
		if (FUNC0(&sk->sk_socket->file->f_owner))
			FUNC1(sk, SOCK_WAKE_URG, POLL_PRI);
}