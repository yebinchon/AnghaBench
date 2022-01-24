#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_4__ name; int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  key_len; TYPE_1__ cat; } ;
typedef  TYPE_2__ hfsplus_btree_key ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct super_block *sb, hfsplus_btree_key *key,
			   u32 parent, struct qstr *str)
{
	int len;

	key->cat.parent = FUNC2(parent);
	if (str) {
		FUNC3(sb, &key->cat.name, str->name, str->len);
		len = FUNC0(key->cat.name.length);
	} else {
		key->cat.name.length = 0;
		len = 0;
	}
	key->key_len = FUNC1(6 + 2 * len);
}