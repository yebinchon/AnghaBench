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
struct journal_head {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct journal_head*,int /*<<< orphan*/ ) ; 
 struct journal_head* FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*) ; 

int FUNC3(handle_t *handle, struct buffer_head *bh)
{
	struct journal_head *jh = FUNC1(bh);
	int rc;

	/* We do not want to get caught playing with fields which the
	 * log thread also manipulates.  Make sure that the buffer
	 * completes any outstanding IO before proceeding. */
	rc = FUNC0(handle, jh, 0);
	FUNC2(jh);
	return rc;
}