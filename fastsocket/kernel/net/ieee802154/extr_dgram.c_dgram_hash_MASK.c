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
struct sock {int /*<<< orphan*/  sk_prot; } ;

/* Variables and functions */
 int /*<<< orphan*/  dgram_head ; 
 int /*<<< orphan*/  dgram_lock ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	FUNC3(&dgram_lock);
	FUNC0(sk, &dgram_head);
	FUNC2(FUNC1(sk), sk->sk_prot, 1);
	FUNC4(&dgram_lock);
}