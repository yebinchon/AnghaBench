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
struct ubifs_info {int empty; int leb_cnt; int /*<<< orphan*/  ubi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ubifs_info *c)
{
	int lnum, err;

	c->empty = 1;
	for (lnum = 0; lnum < c->leb_cnt; lnum++) {
		err = FUNC1(c->ubi, lnum);
		if (FUNC2(err < 0))
			return err;
		if (err == 1) {
			c->empty = 0;
			break;
		}

		FUNC0();
	}

	return 0;
}