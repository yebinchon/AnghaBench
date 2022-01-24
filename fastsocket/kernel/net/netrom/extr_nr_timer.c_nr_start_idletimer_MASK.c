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
struct nr_sock {scalar_t__ idle; int /*<<< orphan*/  idletimer; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct nr_sock* FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk)
{
	struct nr_sock *nr = FUNC1(sk);

	if (nr->idle > 0)
		FUNC0(&nr->idletimer, jiffies + nr->idle);
}