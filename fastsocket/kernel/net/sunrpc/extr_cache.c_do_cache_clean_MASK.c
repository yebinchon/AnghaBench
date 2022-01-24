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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  cache_cleaner ; 
 int /*<<< orphan*/  cache_list ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	int delay = 5;
	if (FUNC0() == -1)
		delay = FUNC2(30*HZ);

	if (FUNC1(&cache_list))
		delay = 0;

	if (delay)
		FUNC3(&cache_cleaner, delay);
}