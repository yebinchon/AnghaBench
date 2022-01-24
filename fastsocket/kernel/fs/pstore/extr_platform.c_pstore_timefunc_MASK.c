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
 scalar_t__ PSTORE_INTERVAL ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ pstore_new_entry ; 
 int /*<<< orphan*/  pstore_timer ; 
 int /*<<< orphan*/  pstore_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(unsigned long dummy)
{
	if (pstore_new_entry) {
		pstore_new_entry = 0;
		FUNC1(&pstore_work);
	}

	FUNC0(&pstore_timer, jiffies + PSTORE_INTERVAL);
}