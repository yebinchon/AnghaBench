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
struct strbuf {size_t len; size_t alloc; char* buf; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 

ssize_t FUNC4(struct strbuf *sb, int fd, ssize_t hint)
{
	size_t oldlen = sb->len;
	size_t oldalloc = sb->alloc;

	FUNC1(sb, hint ? hint : 8192);
	for (;;) {
		ssize_t cnt;

		cnt = FUNC0(fd, sb->buf + sb->len, sb->alloc - sb->len - 1);
		if (cnt < 0) {
			if (oldalloc == 0)
				FUNC2(sb);
			else
				FUNC3(sb, oldlen);
			return -1;
		}
		if (!cnt)
			break;
		sb->len += cnt;
		FUNC1(sb, 8192);
	}

	sb->buf[sb->len] = '\0';
	return sb->len - oldlen;
}