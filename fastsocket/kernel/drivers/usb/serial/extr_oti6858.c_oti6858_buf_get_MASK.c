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
struct oti6858_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_get; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct oti6858_buf*) ; 

__attribute__((used)) static unsigned int FUNC2(struct oti6858_buf *pb, char *buf,
					unsigned int count)
{
	unsigned int len;

	if (pb == NULL)
		return 0;

	len = FUNC1(pb);
	if (count > len)
		count = len;

	if (count == 0)
		return 0;

	len = pb->buf_buf + pb->buf_size - pb->buf_get;
	if (count > len) {
		FUNC0(buf, pb->buf_get, len);
		FUNC0(buf+len, pb->buf_buf, count - len);
		pb->buf_get = pb->buf_buf + count - len;
	} else {
		FUNC0(buf, pb->buf_get, count);
		if (count < len)
			pb->buf_get += count;
		else /* count == len */
			pb->buf_get = pb->buf_buf;
	}

	return count;
}