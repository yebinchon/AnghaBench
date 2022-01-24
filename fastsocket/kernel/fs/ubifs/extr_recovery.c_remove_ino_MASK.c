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
struct ubifs_info {int /*<<< orphan*/  size_tree; } ;
struct size_entry {int /*<<< orphan*/  rb; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 struct size_entry* FUNC0 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct size_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ubifs_info *c, ino_t inum)
{
	struct size_entry *e = FUNC0(c, inum);

	if (!e)
		return;
	FUNC2(&e->rb, &c->size_tree);
	FUNC1(e);
}