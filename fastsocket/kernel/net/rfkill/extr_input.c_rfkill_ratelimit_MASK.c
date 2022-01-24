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
 int /*<<< orphan*/  RFKILL_OPS_DELAY ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned long const) ; 

__attribute__((used)) static unsigned long FUNC2(const unsigned long last)
{
	const unsigned long delay = FUNC0(RFKILL_OPS_DELAY);
	return (FUNC1(jiffies, last + delay)) ? 0 : delay;
}