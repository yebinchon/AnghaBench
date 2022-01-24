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
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ sk_peer_cred; int /*<<< orphan*/  sk_peer_pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, struct sock *peersk)
{
	FUNC3(FUNC4(sk)->sk_peer_pid);
	if (FUNC4(sk)->sk_peer_cred)
		FUNC2(FUNC4(sk)->sk_peer_cred);
	FUNC4(sk)->sk_peer_pid  = FUNC1(FUNC4(peersk)->sk_peer_pid);
	FUNC4(sk)->sk_peer_cred = FUNC0(FUNC4(peersk)->sk_peer_cred);
}