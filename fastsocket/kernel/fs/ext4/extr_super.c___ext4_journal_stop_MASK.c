#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_10__ {int h_err; TYPE_2__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;
struct TYPE_9__ {TYPE_1__* t_journal; } ;
struct TYPE_8__ {struct super_block* j_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 

int FUNC4(const char *where, handle_t *handle)
{
	struct super_block *sb;
	int err;
	int rc;

	if (!FUNC1(handle)) {
		FUNC2(handle);
		return 0;
	}
	sb = handle->h_transaction->t_journal->j_private;
	err = handle->h_err;
	rc = FUNC3(handle);

	if (!err)
		err = rc;
	if (err)
		FUNC0(sb, where, err);
	return err;
}