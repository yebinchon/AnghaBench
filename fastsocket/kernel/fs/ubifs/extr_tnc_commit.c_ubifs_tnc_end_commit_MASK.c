#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* znode; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; int /*<<< orphan*/ * ilebs; int /*<<< orphan*/ * cnext; TYPE_1__ zroot; } ;
struct TYPE_4__ {scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*) ; 

int FUNC7(struct ubifs_info *c)
{
	int err;

	if (!c->cnext)
		return 0;

	err = FUNC5(c);
	if (err)
		return err;

	err = FUNC6(c);
	if (err)
		return err;

	FUNC3(&c->tnc_mutex);

	FUNC0("TNC height is %d", c->zroot.znode->level + 1);

	FUNC1(c);

	c->cnext = NULL;
	FUNC2(c->ilebs);
	c->ilebs = NULL;

	FUNC4(&c->tnc_mutex);

	return 0;
}