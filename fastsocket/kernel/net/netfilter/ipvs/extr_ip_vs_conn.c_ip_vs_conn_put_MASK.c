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
struct ip_vs_conn {unsigned long timeout; int flags; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int IP_VS_CONN_F_ONE_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_conn*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(struct ip_vs_conn *cp)
{
	unsigned long timeout = cp->timeout;

	if (cp->flags & IP_VS_CONN_F_ONE_PACKET)
		timeout = 0;

	/* reset it expire in its timeout */
	FUNC1(&cp->timer, jiffies+timeout);

	FUNC0(cp);
}