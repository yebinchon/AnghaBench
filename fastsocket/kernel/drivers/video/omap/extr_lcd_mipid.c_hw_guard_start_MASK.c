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
struct mipid_device {scalar_t__ hw_guard_wait; scalar_t__ hw_guard_end; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct mipid_device *md, int guard_msec)
{
	md->hw_guard_wait = FUNC0(guard_msec);
	md->hw_guard_end = jiffies + md->hw_guard_wait;
}