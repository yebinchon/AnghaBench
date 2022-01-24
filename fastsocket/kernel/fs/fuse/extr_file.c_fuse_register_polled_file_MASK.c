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
struct rb_node {int dummy; } ;
struct fuse_file {int /*<<< orphan*/  polled_node; int /*<<< orphan*/  kh; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  polled_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rb_node** FUNC2 (struct fuse_conn*,int /*<<< orphan*/ ,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct fuse_conn *fc,
				      struct fuse_file *ff)
{
	FUNC5(&fc->lock);
	if (FUNC1(&ff->polled_node)) {
		struct rb_node **link, *parent;

		link = FUNC2(fc, ff->kh, &parent);
		FUNC0(*link);
		FUNC4(&ff->polled_node, parent, link);
		FUNC3(&ff->polled_node, &fc->polled_files);
	}
	FUNC6(&fc->lock);
}