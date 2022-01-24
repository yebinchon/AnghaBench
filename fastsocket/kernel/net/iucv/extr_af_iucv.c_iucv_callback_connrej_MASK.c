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
typedef  int /*<<< orphan*/  u8 ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct iucv_path {struct sock* private; } ;

/* Variables and functions */
 scalar_t__ IUCV_CLOSED ; 
 scalar_t__ IUCV_DISCONN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct iucv_path *path, u8 ipuser[16])
{
	struct sock *sk = path->private;

	if (sk->sk_state == IUCV_CLOSED)
		return;

	FUNC0(sk);
	FUNC2(sk, 1);
	sk->sk_state = IUCV_DISCONN;
	sk->sk_state_change(sk);
	FUNC1(sk);
}