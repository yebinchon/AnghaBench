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
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct sock *sk1, struct sock *sk2)
{
	if (FUNC2(sk1 == sk2) || !sk2) {
		FUNC0(sk1);
		return;
	}
	if (sk1 < sk2) {
		FUNC0(sk1);
		FUNC1(sk2);
	} else {
		FUNC0(sk2);
		FUNC1(sk1);
	}
}