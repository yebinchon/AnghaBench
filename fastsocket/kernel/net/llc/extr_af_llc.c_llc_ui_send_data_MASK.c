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
struct sk_buff {int dummy; } ;
struct llc_sock {scalar_t__ p_flag; scalar_t__ remote_busy_flag; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,long) ; 
 long FUNC4 (struct sock*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sock* sk, struct sk_buff *skb, int noblock)
{
	struct llc_sock* llc = FUNC2(sk);
	int rc = 0;

	if (FUNC5(FUNC1(llc->state) ||
		     llc->remote_busy_flag ||
		     llc->p_flag)) {
		long timeout = FUNC4(sk, noblock);

		rc = FUNC3(sk, timeout);
	}
	if (FUNC5(!rc))
		rc = FUNC0(sk, skb);
	return rc;
}