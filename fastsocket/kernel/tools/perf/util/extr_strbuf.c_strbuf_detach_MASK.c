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
struct strbuf {char* buf; size_t len; scalar_t__ alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 

char *FUNC1(struct strbuf *sb, size_t *sz)
{
	char *res = sb->alloc ? sb->buf : NULL;
	if (sz)
		*sz = sb->len;
	FUNC0(sb, 0);
	return res;
}