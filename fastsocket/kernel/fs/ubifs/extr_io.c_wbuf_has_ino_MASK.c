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
struct ubifs_wbuf {int next_ino; scalar_t__* inodes; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ubifs_wbuf *wbuf, ino_t inum)
{
	int i, ret = 0;

	FUNC0(&wbuf->lock);
	for (i = 0; i < wbuf->next_ino; i++)
		if (inum == wbuf->inodes[i]) {
			ret = 1;
			break;
		}
	FUNC1(&wbuf->lock);

	return ret;
}