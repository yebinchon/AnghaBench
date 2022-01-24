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
typedef  int /*<<< orphan*/  smd_channel_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(smd_channel_t *ch, const void *_data, int len)
{
	void *ptr;
	const unsigned char *buf = _data;
	unsigned xfer;
	int orig_len = len;

	if (len < 0)
		return -EINVAL;

	while ((xfer = FUNC1(ch, &ptr)) != 0) {
		if (!FUNC0(ch))
			break;
		if (xfer > len)
			xfer = len;
		FUNC3(ptr, buf, xfer);
		FUNC2(ch, xfer);
		len -= xfer;
		buf += xfer;
		if (len == 0)
			break;
	}

	FUNC4();

	return orig_len - len;
}