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
typedef  int /*<<< orphan*/  journal_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(journal_t *journal,
					 struct buffer_head *bh)
{
	int ret = 0;

	FUNC2(bh);
	FUNC6(bh);

	if (FUNC5(!FUNC1(bh)))
		ret = -EIO;
	FUNC4(bh);            /* One for getblk() */
	FUNC3(FUNC0(bh));

	return ret;
}