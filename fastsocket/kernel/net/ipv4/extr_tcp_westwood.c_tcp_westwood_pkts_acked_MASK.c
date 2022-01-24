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
typedef  int /*<<< orphan*/  u32 ;
struct westwood {int /*<<< orphan*/  rtt; } ;
struct sock {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 struct westwood* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, u32 cnt, s32 rtt)
{
	struct westwood *w = FUNC0(sk);

	if (rtt > 0)
		w->rtt = FUNC1(rtt);
}