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
struct gfs2_glock {int dummy; } ;
struct address_space {int /*<<< orphan*/  i_mmap_nonlinear; int /*<<< orphan*/  i_mmap; int /*<<< orphan*/  private_lock; int /*<<< orphan*/  private_list; int /*<<< orphan*/  i_mmap_lock; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *foo)
{
	struct gfs2_glock *gl = foo;
	struct address_space *mapping = (struct address_space *)(gl + 1);

	FUNC3(gl);
	FUNC4(mapping, 0, sizeof(*mapping));
	FUNC1(&mapping->page_tree, GFP_ATOMIC);
	FUNC5(&mapping->tree_lock);
	FUNC5(&mapping->i_mmap_lock);
	FUNC0(&mapping->private_list);
	FUNC5(&mapping->private_lock);
	FUNC2(&mapping->i_mmap);
	FUNC0(&mapping->i_mmap_nonlinear);
}