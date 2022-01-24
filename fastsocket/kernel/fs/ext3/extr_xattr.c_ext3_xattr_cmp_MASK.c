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
struct ext3_xattr_header {int dummy; } ;
struct ext3_xattr_entry {scalar_t__ e_hash; scalar_t__ e_name_index; scalar_t__ e_name_len; scalar_t__ e_value_size; char* e_name; scalar_t__ e_value_block; int /*<<< orphan*/  e_value_offs; } ;

/* Variables and functions */
 int EIO ; 
 struct ext3_xattr_entry* FUNC0 (struct ext3_xattr_header*) ; 
 struct ext3_xattr_entry* FUNC1 (struct ext3_xattr_entry*) ; 
 scalar_t__ FUNC2 (struct ext3_xattr_entry*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct ext3_xattr_header *header1,
	       struct ext3_xattr_header *header2)
{
	struct ext3_xattr_entry *entry1, *entry2;

	entry1 = FUNC0(header1+1);
	entry2 = FUNC0(header2+1);
	while (!FUNC2(entry1)) {
		if (FUNC2(entry2))
			return 1;
		if (entry1->e_hash != entry2->e_hash ||
		    entry1->e_name_index != entry2->e_name_index ||
		    entry1->e_name_len != entry2->e_name_len ||
		    entry1->e_value_size != entry2->e_value_size ||
		    FUNC5(entry1->e_name, entry2->e_name, entry1->e_name_len))
			return 1;
		if (entry1->e_value_block != 0 || entry2->e_value_block != 0)
			return -EIO;
		if (FUNC5((char *)header1 + FUNC3(entry1->e_value_offs),
			   (char *)header2 + FUNC3(entry2->e_value_offs),
			   FUNC4(entry1->e_value_size)))
			return 1;

		entry1 = FUNC1(entry1);
		entry2 = FUNC1(entry2);
	}
	if (!FUNC2(entry2))
		return 1;
	return 0;
}