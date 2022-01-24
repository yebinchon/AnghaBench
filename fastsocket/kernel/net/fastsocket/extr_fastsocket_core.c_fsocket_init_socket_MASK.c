#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_affinity; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  SOCK_AFFINITY ; 
 int /*<<< orphan*/  SOCK_DIRECT_TCP ; 
 scalar_t__ enable_direct_tcp ; 
 scalar_t__ enable_receive_cpu_selection ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct socket *sock)
{
	if (enable_direct_tcp) {
		FUNC2(sock->sk, SOCK_DIRECT_TCP);
		FUNC0(DEBUG, "Socket 0x%p is set with DIRECT_TCP\n", sock->sk);
	}
	if (enable_receive_cpu_selection) {
		FUNC2(sock->sk, SOCK_AFFINITY);
		sock->sk->sk_affinity = FUNC1();
		FUNC0(DEBUG, "Socket 0x%p is set with RCS\n", sock->sk);
	}
}