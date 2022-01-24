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
struct address_space {int /*<<< orphan*/  i_mmap_nonlinear; int /*<<< orphan*/  i_mmap; int /*<<< orphan*/  i_mmap_lock; int /*<<< orphan*/  private_lock; int /*<<< orphan*/  private_list; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct address_space *btnc)
{
	FUNC3(btnc, 0, sizeof(*btnc));
	FUNC1(&btnc->page_tree, GFP_ATOMIC);
	FUNC4(&btnc->tree_lock);
	FUNC0(&btnc->private_list);
	FUNC4(&btnc->private_lock);

	FUNC4(&btnc->i_mmap_lock);
	FUNC2(&btnc->i_mmap);
	FUNC0(&btnc->i_mmap_nonlinear);
}