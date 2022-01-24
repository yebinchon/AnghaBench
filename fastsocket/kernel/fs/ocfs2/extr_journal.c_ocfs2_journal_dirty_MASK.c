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
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(handle_t *handle,
			struct buffer_head *bh)
{
	int status;

	FUNC2("(bh->b_blocknr=%llu)\n",
		   (unsigned long long)bh->b_blocknr);

	status = FUNC0(handle, bh);
	if (status < 0)
		FUNC1(ML_ERROR, "Could not dirty metadata buffer. "
		     "(bh->b_blocknr=%llu)\n",
		     (unsigned long long)bh->b_blocknr);

	FUNC3(status);
	return status;
}