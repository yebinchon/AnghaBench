#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct publication {int dummy; } ;
struct name_seq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct name_seq*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct name_seq* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ table ; 
 struct name_seq* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct publication* FUNC4 (struct name_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct publication *FUNC6(u32 type, u32 lower, u32 upper,
					     u32 scope, u32 node, u32 port, u32 key)
{
	struct name_seq *seq = FUNC2(type);

	FUNC0("tipc_nametbl_insert_publ: {%u,%u,%u} found %p\n", type, lower, upper, seq);
	if (lower > upper) {
		FUNC5("Failed to publish illegal {%u,%u,%u}\n",
		     type, lower, upper);
		return NULL;
	}

	FUNC0("Publishing {%u,%u,%u} from 0x%x\n", type, lower, upper, node);
	if (!seq) {
		seq = FUNC3(type, &table.types[FUNC1(type)]);
		FUNC0("tipc_nametbl_insert_publ: created %p\n", seq);
	}
	if (!seq)
		return NULL;

	return FUNC4(seq, type, lower, upper,
					scope, node, port, key);
}