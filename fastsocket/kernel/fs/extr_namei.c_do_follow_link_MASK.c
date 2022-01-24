#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct path {int /*<<< orphan*/  dentry; } ;
struct nameidata {scalar_t__ depth; int /*<<< orphan*/  path; } ;
struct TYPE_2__ {scalar_t__ link_count; int total_link_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ELOOP ; 
 scalar_t__ MAX_NESTED_LINKS ; 
 int FUNC1 (struct path*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct path*,struct nameidata*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct nameidata*) ; 

__attribute__((used)) static inline int FUNC6(struct path *path, struct nameidata *nd)
{
	int err = -ELOOP;
	if (current->link_count >= MAX_NESTED_LINKS)
		goto loop;
	if (current->total_link_count >= 40)
		goto loop;
	FUNC0(nd->depth >= MAX_NESTED_LINKS);
	FUNC2();
	err = FUNC5(path->dentry, nd);
	if (err)
		goto loop;
	current->link_count++;
	current->total_link_count++;
	nd->depth++;
	err = FUNC1(path, nd);
	current->link_count--;
	nd->depth--;
	return err;
loop:
	FUNC4(path, nd);
	FUNC3(&nd->path);
	return err;
}