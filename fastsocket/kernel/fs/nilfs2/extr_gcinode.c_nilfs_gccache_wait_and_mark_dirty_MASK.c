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

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

int FUNC6(struct buffer_head *bh)
{
	FUNC5(bh);
	if (!FUNC2(bh))
		return -EIO;
	if (FUNC0(bh))
		return -EEXIST;

	if (FUNC1(bh))
		FUNC3(bh);
	else
		FUNC4(bh);
	return 0;
}