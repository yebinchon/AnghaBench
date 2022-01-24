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
struct buffer_head {int b_state; int /*<<< orphan*/  b_count; } ;

/* Variables and functions */
 int BH_Dirty ; 
 int BH_Lock ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct buffer_head *bh)
{
	return FUNC0(&bh->b_count) |
		(bh->b_state & ((1 << BH_Dirty) | (1 << BH_Lock)));
}