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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  alloc; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(struct strbuf *sb, size_t extra)
{
	if (sb->len + extra + 1 <= sb->len)
		FUNC1("you want to use way too much memory");
	if (!sb->alloc)
		sb->buf = NULL;
	FUNC0(sb->buf, sb->len + extra + 1, sb->alloc);
}