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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct size_entry {int exists; void* d_size; void* i_size; } ;
typedef  void* loff_t ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
#define  UBIFS_DATA_KEY 130 
#define  UBIFS_INO_KEY 129 
#define  UBIFS_TRUN_KEY 128 
 int FUNC0 (struct ubifs_info*,int /*<<< orphan*/ ,void*,void*,int) ; 
 struct size_entry* FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,union ubifs_key*) ; 
 int FUNC3 (struct ubifs_info*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

int FUNC5(struct ubifs_info *c, union ubifs_key *key,
			     int deletion, loff_t new_size)
{
	ino_t inum = FUNC2(c, key);
	struct size_entry *e;
	int err;

	switch (FUNC3(c, key)) {
	case UBIFS_INO_KEY:
		if (deletion)
			FUNC4(c, inum);
		else {
			e = FUNC1(c, inum);
			if (e) {
				e->i_size = new_size;
				e->exists = 1;
			} else {
				err = FUNC0(c, inum, new_size, 0, 1);
				if (err)
					return err;
			}
		}
		break;
	case UBIFS_DATA_KEY:
		e = FUNC1(c, inum);
		if (e) {
			if (new_size > e->d_size)
				e->d_size = new_size;
		} else {
			err = FUNC0(c, inum, 0, new_size, 0);
			if (err)
				return err;
		}
		break;
	case UBIFS_TRUN_KEY:
		e = FUNC1(c, inum);
		if (e)
			e->d_size = new_size;
		break;
	}
	return 0;
}