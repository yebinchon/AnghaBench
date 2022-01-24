#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  fs64 ;
typedef  int /*<<< orphan*/  befs_off_t ;
struct TYPE_6__ {int all_key_count; } ;
struct TYPE_7__ {TYPE_1__ head; } ;
typedef  TYPE_2__ befs_btree_node ;

/* Variables and functions */
 int BEFS_BT_MATCH ; 
 int BEFS_BT_NOT_FOUND ; 
 int BEFS_BT_PARMATCH ; 
 char* FUNC0 (struct super_block*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(struct super_block *sb, befs_btree_node * node,
	      const char *findkey, befs_off_t * value)
{
	int first, last, mid;
	int eq;
	u16 keylen;
	int findkey_len;
	char *thiskey;
	fs64 *valarray;

	FUNC3(sb, "---> befs_find_key() %s", findkey);

	*value = 0;

	findkey_len = FUNC5(findkey);

	/* if node can not contain key, just skeep this node */
	last = node->head.all_key_count - 1;
	thiskey = FUNC0(sb, node, last, &keylen);

	eq = FUNC2(thiskey, keylen, findkey, findkey_len);
	if (eq < 0) {
		FUNC3(sb, "<--- befs_find_key() %s not found", findkey);
		return BEFS_BT_NOT_FOUND;
	}

	valarray = FUNC1(node);

	/* simple binary search */
	first = 0;
	mid = 0;
	while (last >= first) {
		mid = (last + first) / 2;
		FUNC3(sb, "first: %d, last: %d, mid: %d", first, last,
			   mid);
		thiskey = FUNC0(sb, node, mid, &keylen);
		eq = FUNC2(thiskey, keylen, findkey,
					  findkey_len);

		if (eq == 0) {
			FUNC3(sb, "<--- befs_find_key() found %s at %d",
				   thiskey, mid);

			*value = FUNC4(sb, valarray[mid]);
			return BEFS_BT_MATCH;
		}
		if (eq > 0)
			last = mid - 1;
		else
			first = mid + 1;
	}
	if (eq < 0)
		*value = FUNC4(sb, valarray[mid + 1]);
	else
		*value = FUNC4(sb, valarray[mid]);
	FUNC3(sb, "<--- befs_find_key() found %s at %d", thiskey, mid);
	return BEFS_BT_PARMATCH;
}