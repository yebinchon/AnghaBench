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
struct sock {int dummy; } ;
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/ * function; } ;
struct rose_sock {scalar_t__ idle; TYPE_1__ idletimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  rose_idletimer_expiry ; 
 struct rose_sock* FUNC2 (struct sock*) ; 

void FUNC3(struct sock *sk)
{
	struct rose_sock *rose = FUNC2(sk);

	FUNC1(&rose->idletimer);

	if (rose->idle > 0) {
		rose->idletimer.data     = (unsigned long)sk;
		rose->idletimer.function = &rose_idletimer_expiry;
		rose->idletimer.expires  = jiffies + rose->idle;

		FUNC0(&rose->idletimer);
	}
}