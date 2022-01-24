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
struct cypress_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_get; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cypress_buf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct cypress_buf *cb, char *buf,
	unsigned int count)
{

	unsigned int len;


	if (cb == NULL)
		return 0;

	len = FUNC0(cb);
	if (count > len)
		count = len;

	if (count == 0)
		return 0;

	len = cb->buf_buf + cb->buf_size - cb->buf_get;
	if (count > len) {
		FUNC1(buf, cb->buf_get, len);
		FUNC1(buf+len, cb->buf_buf, count - len);
		cb->buf_get = cb->buf_buf + count - len;
	} else {
		FUNC1(buf, cb->buf_get, count);
		if (count < len)
			cb->buf_get += count;
		else /* count == len */
			cb->buf_get = cb->buf_buf;
	}

	return count;

}