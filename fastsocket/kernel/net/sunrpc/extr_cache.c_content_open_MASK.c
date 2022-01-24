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
struct inode {int dummy; } ;
struct handle {struct cache_detail* cd; } ;
struct file {int dummy; } ;
struct cache_detail {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 struct handle* FUNC0 (struct file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cache_content_op ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file,
			struct cache_detail *cd)
{
	struct handle *han;

	if (!cd || !FUNC2(cd->owner))
		return -EACCES;
	han = FUNC0(file, &cache_content_op, sizeof(*han));
	if (han == NULL) {
		FUNC1(cd->owner);
		return -ENOMEM;
	}

	han->cd = cd;
	return 0;
}