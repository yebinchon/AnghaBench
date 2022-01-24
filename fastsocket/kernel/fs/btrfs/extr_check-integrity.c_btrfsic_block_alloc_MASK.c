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
struct btrfsic_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct btrfsic_block*) ; 
 struct btrfsic_block* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct btrfsic_block *FUNC2(void)
{
	struct btrfsic_block *b;

	b = FUNC1(sizeof(*b), GFP_NOFS);
	if (NULL != b)
		FUNC0(b);

	return b;
}