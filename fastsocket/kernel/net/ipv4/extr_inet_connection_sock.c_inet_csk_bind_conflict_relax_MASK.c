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
struct inet_bind_bucket {int dummy; } ;
struct TYPE_4__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {int (* bind_conflict ) (struct sock*,struct inet_bind_bucket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_RELAX ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sock*,struct inet_bind_bucket*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk,
					struct inet_bind_bucket *tb)
{
	int ret;

	FUNC2(sk, SOCK_RELAX);
	ret = FUNC0(sk)->icsk_af_ops->bind_conflict(sk, tb);
	FUNC1(sk, SOCK_RELAX);
	return ret;
}