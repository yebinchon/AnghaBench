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

/* Variables and functions */
 int HZ ; 
 int heartbeat ; 
 scalar_t__ jiffies ; 
 scalar_t__ next_heartbeat ; 
 int /*<<< orphan*/  shwdt_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	unsigned long flags;

	FUNC0(&shwdt_lock, flags);
	next_heartbeat = jiffies + (heartbeat * HZ);
	FUNC1(&shwdt_lock, flags);
}