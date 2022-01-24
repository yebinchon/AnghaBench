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
struct fuse_conn {int /*<<< orphan*/  killsb; int /*<<< orphan*/ * sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct fuse_conn *fc = FUNC1(sb);

	if (fc) {
		FUNC0(&fc->killsb);
		fc->sb = NULL;
		FUNC3(&fc->killsb);
	}

	FUNC2(sb);
}