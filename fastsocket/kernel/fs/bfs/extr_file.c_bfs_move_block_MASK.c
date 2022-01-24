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
struct super_block {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (struct super_block*,unsigned long) ; 
 struct buffer_head* FUNC5 (struct super_block*,unsigned long) ; 

__attribute__((used)) static int FUNC6(unsigned long from, unsigned long to,
					struct super_block *sb)
{
	struct buffer_head *bh, *new;

	bh = FUNC4(sb, from);
	if (!bh)
		return -EIO;
	new = FUNC5(sb, to);
	FUNC3(new->b_data, bh->b_data, bh->b_size);
	FUNC2(new);
	FUNC0(bh);
	FUNC1(new);
	return 0;
}