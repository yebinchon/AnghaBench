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
struct u132 {int /*<<< orphan*/  kref; int /*<<< orphan*/  monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  workqueue ; 

__attribute__((used)) static void FUNC2(struct u132 *u132, unsigned int delta)
{
	if (FUNC1(workqueue, &u132->monitor, delta))
		FUNC0(&u132->kref);
}