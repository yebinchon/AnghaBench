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
struct gs_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_get; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct gs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned
FUNC2(struct gs_buf *gb, char *buf, unsigned count)
{
	unsigned len;

	len = FUNC0(gb);
	if (count > len)
		count = len;

	if (count == 0)
		return 0;

	len = gb->buf_buf + gb->buf_size - gb->buf_get;
	if (count > len) {
		FUNC1(buf, gb->buf_get, len);
		FUNC1(buf+len, gb->buf_buf, count - len);
		gb->buf_get = gb->buf_buf + count - len;
	} else {
		FUNC1(buf, gb->buf_get, count);
		if (count < len)
			gb->buf_get += count;
		else /* count == len */
			gb->buf_get = gb->buf_buf;
	}

	return count;
}