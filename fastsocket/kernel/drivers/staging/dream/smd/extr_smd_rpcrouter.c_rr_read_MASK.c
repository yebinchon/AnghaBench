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
 int EIO ; 
 int rpcrouter_need_len ; 
 int /*<<< orphan*/  rpcrouter_wake_lock ; 
 int /*<<< orphan*/  smd_channel ; 
 int /*<<< orphan*/  smd_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smd_wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *data, int len)
{
	int rc;
	unsigned long flags;
//	printk("rr_read() %d\n", len);
	for(;;) {
		FUNC2(&smd_lock, flags);
		if (FUNC1(smd_channel) >= len) {
			rc = FUNC0(smd_channel, data, len);
			FUNC3(&smd_lock, flags);
			if (rc == len)
				return 0;
			else
				return -EIO;
		}
		rpcrouter_need_len = len;
		FUNC5(&rpcrouter_wake_lock);
		FUNC3(&smd_lock, flags);

//		printk("rr_read: waiting (%d)\n", len);
		FUNC4(smd_wait, FUNC1(smd_channel) >= len);
	}
	return 0;
}