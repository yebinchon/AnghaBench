#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  offs_boot; struct timespec total_sleep_time; } ;

/* Variables and functions */
 TYPE_1__ timekeeper ; 
 int /*<<< orphan*/  FUNC0 (struct timespec) ; 

__attribute__((used)) static void FUNC1(struct timespec t)
{
	timekeeper.total_sleep_time = t;
	timekeeper.offs_boot = FUNC0(t);
}