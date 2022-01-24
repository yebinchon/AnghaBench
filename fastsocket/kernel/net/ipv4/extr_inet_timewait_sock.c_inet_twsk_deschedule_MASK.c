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
struct inet_timewait_sock {int dummy; } ;
struct inet_timewait_death_row {scalar_t__ tw_count; int /*<<< orphan*/  hashinfo; int /*<<< orphan*/  death_lock; int /*<<< orphan*/  tw_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet_timewait_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inet_timewait_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_timewait_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inet_timewait_sock *tw,
			  struct inet_timewait_death_row *twdr)
{
	FUNC4(&twdr->death_lock);
	if (FUNC2(tw)) {
		FUNC3(tw);
		if (--twdr->tw_count == 0)
			FUNC1(&twdr->tw_timer);
	}
	FUNC5(&twdr->death_lock);
	FUNC0(tw, twdr->hashinfo);
}