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
struct radix_tree_root {int /*<<< orphan*/  gfp_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  __GFP_BITS_MASK ; 

__attribute__((used)) static inline void FUNC0(struct radix_tree_root *root)
{
	root->gfp_mask &= __GFP_BITS_MASK;
}