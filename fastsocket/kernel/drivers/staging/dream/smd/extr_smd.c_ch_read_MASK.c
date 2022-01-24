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
struct smd_channel {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct smd_channel*,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct smd_channel*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct smd_channel *ch, void *_data, int len)
{
	void *ptr;
	unsigned n;
	unsigned char *data = _data;
	int orig_len = len;

	while (len > 0) {
		n = FUNC0(ch, &ptr);
		if (n == 0)
			break;

		if (n > len)
			n = len;
		if (_data)
			FUNC2(data, ptr, n);

		data += n;
		len -= n;
		FUNC1(ch, n);
	}

	return orig_len - len;
}