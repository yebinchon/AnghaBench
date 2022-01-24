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
struct sscape_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_CTRL ; 
 int /*<<< orphan*/  HOST_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RX_READY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct sscape_info *devc)
{
	unsigned long flags;
	int timeout_val;
	unsigned char data;

	FUNC2(&devc->lock,flags);
	/*
	 * Read a byte
	 */

	for (timeout_val = 10000; timeout_val > 0; timeout_val--)
		if (FUNC1(FUNC0(HOST_CTRL)) & RX_READY)
			break;

	if (timeout_val <= 0)
	{
		FUNC3(&devc->lock,flags);
		return -1;
	}
	data = FUNC1(FUNC0(HOST_DATA));
	FUNC3(&devc->lock,flags);
	return data;
}