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
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  keventd_wq ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct delayed_work*,unsigned long) ; 

int FUNC1(int cpu,
			struct delayed_work *dwork, unsigned long delay)
{
	return FUNC0(cpu, keventd_wq, dwork, delay);
}