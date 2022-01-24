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
struct super_block {int dummy; } ;
struct extended_attribute {int valuelen; int namelen; int /*<<< orphan*/  anode; scalar_t__ indirect; } ;
struct buffer_head {int dummy; } ;
struct anode {int /*<<< orphan*/  btree; } ;
typedef  int /*<<< orphan*/  secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct extended_attribute*) ; 
 int /*<<< orphan*/  FUNC2 (struct extended_attribute*) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ,int,unsigned int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct anode* FUNC7 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ *) ; 

void FUNC9(struct super_block *s, secno a, int ano, unsigned len)
{
	unsigned pos = 0;
	while (pos < len) {
		char ex[4 + 255 + 1 + 8];
		struct extended_attribute *ea = (struct extended_attribute *)ex;
		if (pos + 4 > len) {
			FUNC5(s, "EAs don't end correctly, %s %08x, len %08x",
				ano ? "anode" : "sectors", a, len);
			return;
		}
		if (FUNC3(s, a, ano, pos, 4, ex)) return;
		if (ea->indirect) {
			if (ea->valuelen != 8) {
				FUNC5(s, "ea->indirect set while ea->valuelen!=8, %s %08x, pos %08x",
					ano ? "anode" : "sectors", a, pos);
				return;
			}
			if (FUNC3(s, a, ano, pos + 4, ea->namelen + 9, ex+4))
				return;
			FUNC4(s, FUNC2(ea), ea->anode, FUNC1(ea));
		}
		pos += ea->namelen + ea->valuelen + 5;
	}
	if (!ano) FUNC6(s, a, (len+511) >> 9);
	else {
		struct buffer_head *bh;
		struct anode *anode;
		if ((anode = FUNC7(s, a, &bh))) {
			FUNC8(s, &anode->btree);
			FUNC0(bh);
			FUNC6(s, a, 1);
		}
	}
}