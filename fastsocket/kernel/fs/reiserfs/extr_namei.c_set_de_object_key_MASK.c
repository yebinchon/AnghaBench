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
struct reiserfs_dir_entry {size_t de_entry_num; int /*<<< orphan*/ * de_deh; int /*<<< orphan*/  de_objectid; int /*<<< orphan*/  de_dir_id; int /*<<< orphan*/  de_ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct reiserfs_dir_entry *de)
{
	FUNC0(de->de_entry_num >= FUNC3(de->de_ih));
	de->de_dir_id = FUNC1(&(de->de_deh[de->de_entry_num]));
	de->de_objectid = FUNC2(&(de->de_deh[de->de_entry_num]));
}