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
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_offs; scalar_t__ e_value_size; int /*<<< orphan*/  e_value_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ext4_xattr_entry* FUNC1 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,size_t) ; 

__attribute__((used)) static void FUNC7(struct ext4_xattr_entry *entry,
				     int value_offs_shift, void *to,
				     void *from, size_t n, int blocksize)
{
	struct ext4_xattr_entry *last = entry;
	int new_offs;

	/* Adjust the value offsets of the entries */
	for (; !FUNC2(last); last = FUNC1(last)) {
		if (!last->e_value_block && last->e_value_size) {
			new_offs = FUNC4(last->e_value_offs) +
							value_offs_shift;
			FUNC0(new_offs + FUNC5(last->e_value_size)
				 > blocksize);
			last->e_value_offs = FUNC3(new_offs);
		}
	}
	/* Shift the entries by n bytes */
	FUNC6(to, from, n);
}