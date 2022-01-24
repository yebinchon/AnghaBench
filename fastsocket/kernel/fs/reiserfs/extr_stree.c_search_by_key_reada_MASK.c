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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;

/* Variables and functions */
 int /*<<< orphan*/  READA ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 struct buffer_head* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct super_block *s,
				struct buffer_head **bh,
				b_blocknr_t *b, int num)
{
	int i, j;

	for (i = 0; i < num; i++) {
		bh[i] = FUNC3(s, b[i]);
	}
	for (j = 0; j < i; j++) {
		/*
		 * note, this needs attention if we are getting rid of the BKL
		 * you have to make sure the prepared bit isn't set on this buffer
		 */
		if (!FUNC1(bh[j]))
			FUNC2(READA, 1, bh + j);
		FUNC0(bh[j]);
	}
}