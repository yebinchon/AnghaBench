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
 scalar_t__ FUNC0 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sock*) ; 

__attribute__((used)) static inline int FUNC2(struct sock *sk, struct sock *osk)
{
	return FUNC1(osk) == NULL || FUNC0(sk, osk);
}