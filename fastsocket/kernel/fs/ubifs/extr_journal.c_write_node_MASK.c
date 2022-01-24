#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubifs_wbuf {int lnum; int offs; int used; } ;
struct ubifs_info {TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int GCHD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubifs_wbuf*,void*,int) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, int jhead, void *node, int len,
		      int *lnum, int *offs)
{
	struct ubifs_wbuf *wbuf = &c->jheads[jhead].wbuf;

	FUNC2(jhead != GCHD);

	*lnum = c->jheads[jhead].wbuf.lnum;
	*offs = c->jheads[jhead].wbuf.offs + c->jheads[jhead].wbuf.used;

	FUNC1("jhead %s, LEB %d:%d, len %d",
		FUNC0(jhead), *lnum, *offs, len);
	FUNC3(c, node, len, 0);

	return FUNC4(wbuf, node, len);
}