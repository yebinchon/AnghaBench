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
struct ubifs_info {int lpt_lebs; scalar_t__ lpt_first; TYPE_1__* ltab; } ;
struct TYPE_2__ {scalar_t__ tgc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int FUNC1 (struct ubifs_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ubifs_info *c)
{
	int i, err;

	for (i = 0; i < c->lpt_lebs; i++)
		if (c->ltab[i].tgc) {
			err = FUNC1(c, i + c->lpt_first);
			if (err)
				return err;
			c->ltab[i].tgc = 0;
			FUNC0("LEB %d", i + c->lpt_first);
		}
	return 0;
}