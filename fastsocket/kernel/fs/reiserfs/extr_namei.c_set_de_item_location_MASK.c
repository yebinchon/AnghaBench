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
struct treepath {int dummy; } ;
struct reiserfs_dir_entry {int /*<<< orphan*/  de_item_num; int /*<<< orphan*/  de_ih; int /*<<< orphan*/  de_bh; int /*<<< orphan*/  de_deh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC2 (struct treepath*) ; 
 int /*<<< orphan*/  FUNC3 (struct treepath*) ; 

__attribute__((used)) static inline void FUNC4(struct reiserfs_dir_entry *de,
					struct treepath *path)
{
	de->de_bh = FUNC3(path);
	de->de_ih = FUNC2(path);
	de->de_deh = FUNC0(de->de_bh, de->de_ih);
	de->de_item_num = FUNC1(path);
}