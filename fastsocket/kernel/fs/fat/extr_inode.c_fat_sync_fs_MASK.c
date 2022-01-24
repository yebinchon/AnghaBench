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
struct super_block {scalar_t__ s_dirt; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, int wait)
{
	int err = 0;

	if (sb->s_dirt) {
		FUNC1(sb);
		sb->s_dirt = 0;
		err = FUNC0(sb);
		FUNC2(sb);
	}

	return err;
}