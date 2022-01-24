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
struct ext3_dir_entry_2 {scalar_t__ inode; int /*<<< orphan*/  rec_len; int /*<<< orphan*/  name_len; } ;
struct dx_map_entry {int offs; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ext3_dir_entry_2*,unsigned int) ; 

__attribute__((used)) static struct ext3_dir_entry_2 *
FUNC3(char *from, char *to, struct dx_map_entry *map, int count)
{
	unsigned rec_len = 0;

	while (count--) {
		struct ext3_dir_entry_2 *de = (struct ext3_dir_entry_2 *) (from + map->offs);
		rec_len = FUNC0(de->name_len);
		FUNC2 (to, de, rec_len);
		((struct ext3_dir_entry_2 *) to)->rec_len =
				FUNC1(rec_len);
		de->inode = 0;
		map++;
		to += rec_len;
	}
	return (struct ext3_dir_entry_2 *) (to - rec_len);
}