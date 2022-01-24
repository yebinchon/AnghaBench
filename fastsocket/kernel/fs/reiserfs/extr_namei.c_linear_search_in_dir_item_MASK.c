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
struct reiserfs_dir_entry {int de_entry_num; int de_item_num; int /*<<< orphan*/  de_ih; scalar_t__ de_gen_number_bit_string; int /*<<< orphan*/  de_bh; struct reiserfs_de_head* de_deh; } ;
struct reiserfs_de_head {int dummy; } ;
struct cpu_key {int dummy; } ;

/* Variables and functions */
 struct reiserfs_de_head* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int GOTO_PREVIOUS_ITEM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int NAME_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct reiserfs_dir_entry*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct reiserfs_dir_entry*) ; 

__attribute__((used)) static int FUNC13(struct cpu_key *key,
				     struct reiserfs_dir_entry *de,
				     const char *name, int namelen)
{
	struct reiserfs_de_head *deh = de->de_deh;
	int retval;
	int i;

	i = de->de_entry_num;

	if (i == FUNC3(de->de_ih) ||
	    FUNC2(FUNC6(deh + i)) !=
	    FUNC2(FUNC5(key))) {
		i--;
	}

	FUNC4(de->de_deh != FUNC0(de->de_bh, de->de_ih),
	       "vs-7010: array of entry headers not found");

	deh += i;

	for (; i >= 0; i--, deh--) {
		if (FUNC2(FUNC6(deh)) !=
		    FUNC2(FUNC5(key))) {
			// hash value does not match, no need to check whole name
			return NAME_NOT_FOUND;
		}

		/* mark, that this generation number is used */
		if (de->de_gen_number_bit_string)
			FUNC9(FUNC1(FUNC6(deh)),
				de->de_gen_number_bit_string);

		// calculate pointer to name and namelen
		de->de_entry_num = i;
		FUNC10(de);

		if ((retval =
		     FUNC8(de, name, namelen)) != NAME_NOT_FOUND) {
			// de's de_name, de_namelen, de_recordlen are set. Fill the rest:

			// key of pointed object
			FUNC11(de);

			FUNC12(de);

			// retval can be NAME_FOUND or NAME_FOUND_INVISIBLE
			return retval;
		}
	}

	if (FUNC1(FUNC7(de->de_ih)) == 0)
		/* we have reached left most entry in the node. In common we
		   have to go to the left neighbor, but if generation counter
		   is 0 already, we know for sure, that there is no name with
		   the same hash value */
		// FIXME: this work correctly only because hash value can not
		// be 0. Btw, in case of Yura's hash it is probably possible,
		// so, this is a bug
		return NAME_NOT_FOUND;

	FUNC4(de->de_item_num,
	       "vs-7015: two diritems of the same directory in one node?");

	return GOTO_PREVIOUS_ITEM;
}