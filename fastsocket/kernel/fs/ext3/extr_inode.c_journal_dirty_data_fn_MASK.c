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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct buffer_head*) ; 

__attribute__((used)) static int FUNC3(handle_t *handle, struct buffer_head *bh)
{
	/*
	 * Write could have mapped the buffer but it didn't copy the data in
	 * yet. So avoid filing such buffer into a transaction.
	 */
	if (FUNC0(bh) && FUNC1(bh))
		return FUNC2(handle, bh);
	return 0;
}