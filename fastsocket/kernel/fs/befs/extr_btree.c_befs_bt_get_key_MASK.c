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
typedef  int u16 ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  fs16 ;
struct TYPE_6__ {int all_key_count; } ;
struct TYPE_7__ {TYPE_1__ head; } ;
typedef  TYPE_2__ befs_btree_node ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(struct super_block *sb, befs_btree_node * node,
		int index, u16 * keylen)
{
	int prev_key_end;
	char *keystart;
	fs16 *keylen_index;

	if (index < 0 || index > node->head.all_key_count) {
		*keylen = 0;
		return NULL;
	}

	keystart = FUNC0(node);
	keylen_index = FUNC1(node);

	if (index == 0)
		prev_key_end = 0;
	else
		prev_key_end = FUNC2(sb, keylen_index[index - 1]);

	*keylen = FUNC2(sb, keylen_index[index]) - prev_key_end;

	return keystart + prev_key_end;
}