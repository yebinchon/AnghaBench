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
struct net_bridge {scalar_t__ stp_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ BR_NO_STP ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 

void FUNC3(struct net_bridge *br, unsigned long val)
{
	FUNC0();

	if (val) {
		if (br->stp_enabled == BR_NO_STP)
			FUNC1(br);
	} else {
		if (br->stp_enabled != BR_NO_STP)
			FUNC2(br);
	}
}