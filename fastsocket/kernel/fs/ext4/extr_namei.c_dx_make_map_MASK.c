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
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ name_len; int /*<<< orphan*/  name; scalar_t__ inode; } ;
struct dx_map_entry {int offs; int /*<<< orphan*/  size; int /*<<< orphan*/  hash; } ;
struct dx_hash_info {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct ext4_dir_entry_2* FUNC1 (struct ext4_dir_entry_2*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct dx_hash_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ext4_dir_entry_2 *de, unsigned blocksize,
		       struct dx_hash_info *hinfo,
		       struct dx_map_entry *map_tail)
{
	int count = 0;
	char *base = (char *) de;
	struct dx_hash_info h = *hinfo;

	while ((char *) de < base + blocksize) {
		if (de->name_len && de->inode) {
			FUNC2(de->name, de->name_len, &h);
			map_tail--;
			map_tail->hash = h.hash;
			map_tail->offs = ((char *) de - base)>>2;
			map_tail->size = FUNC3(de->rec_len);
			count++;
			FUNC0();
		}
		/* XXX: do we need to check rec_len == 0 case? -Chris */
		de = FUNC1(de, blocksize);
	}
	return count;
}