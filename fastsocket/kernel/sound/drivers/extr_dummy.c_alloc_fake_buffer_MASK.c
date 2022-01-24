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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void** dummy_page ; 
 int /*<<< orphan*/  fake_buffer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	int i;

	if (!fake_buffer)
		return 0;
	for (i = 0; i < 2; i++) {
		dummy_page[i] = (void *)FUNC1(GFP_KERNEL);
		if (!dummy_page[i]) {
			FUNC0();
			return -ENOMEM;
		}
	}
	return 0;
}