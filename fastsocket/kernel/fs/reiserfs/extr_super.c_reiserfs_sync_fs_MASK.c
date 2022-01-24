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
struct reiserfs_transaction_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static int FUNC5(struct super_block *s, int wait)
{
	struct reiserfs_transaction_handle th;

	FUNC3(s);
	if (!FUNC0(&th, s, 1))
		if (!FUNC1(&th, s, 1))
			FUNC2(s);
	s->s_dirt = 0;	/* Even if it's not true.
			 * We'll loop forever in sync_supers otherwise */
	FUNC4(s);
	return 0;
}