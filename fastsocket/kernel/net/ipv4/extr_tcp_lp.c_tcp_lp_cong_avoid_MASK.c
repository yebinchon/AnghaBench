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
struct sock {int dummy; } ;
struct lp {int flag; } ;

/* Variables and functions */
 int LP_WITHIN_INF ; 
 struct lp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, u32 ack, u32 in_flight)
{
	struct lp *lp = FUNC0(sk);

	if (!(lp->flag & LP_WITHIN_INF))
		FUNC1(sk, ack, in_flight);
}