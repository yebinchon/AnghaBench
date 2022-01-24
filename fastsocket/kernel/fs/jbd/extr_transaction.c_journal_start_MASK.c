#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_11__ {int /*<<< orphan*/  h_ref; TYPE_1__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_12__ {TYPE_2__* journal_info; } ;
struct TYPE_10__ {int /*<<< orphan*/ * t_journal; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EROFS ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_8__* current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 TYPE_2__* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

handle_t *FUNC6(journal_t *journal, int nblocks)
{
	handle_t *handle = FUNC3();
	int err;

	if (!journal)
		return FUNC0(-EROFS);

	if (handle) {
		FUNC1(handle->h_transaction->t_journal == journal);
		handle->h_ref++;
		return handle;
	}

	handle = FUNC4(nblocks);
	if (!handle)
		return FUNC0(-ENOMEM);

	current->journal_info = handle;

	err = FUNC5(journal, handle);
	if (err < 0) {
		FUNC2(handle);
		current->journal_info = NULL;
		handle = FUNC0(err);
		goto out;
	}
out:
	return handle;
}