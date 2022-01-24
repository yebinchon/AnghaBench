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
struct edge_buf {unsigned int buf_buf; unsigned int buf_size; unsigned int buf_put; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct edge_buf*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char const*,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct edge_buf *eb, const char *buf,
	unsigned int count)
{
	unsigned int len;


	if (eb == NULL)
		return 0;

	len  = FUNC0(eb);
	if (count > len)
		count = len;

	if (count == 0)
		return 0;

	len = eb->buf_buf + eb->buf_size - eb->buf_put;
	if (count > len) {
		FUNC1(eb->buf_put, buf, len);
		FUNC1(eb->buf_buf, buf+len, count - len);
		eb->buf_put = eb->buf_buf + count - len;
	} else {
		FUNC1(eb->buf_put, buf, count);
		if (count < len)
			eb->buf_put += count;
		else /* count == len */
			eb->buf_put = eb->buf_buf;
	}

	return count;
}