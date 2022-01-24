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
typedef  int /*<<< orphan*/  u32 ;
struct publication {int dummy; } ;
struct name_seq {struct name_seq* sseqs; int /*<<< orphan*/  ns_list; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  first_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct name_seq*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct name_seq* FUNC4 (int /*<<< orphan*/ ) ; 
 struct publication* FUNC5 (struct name_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct publication *FUNC6(u32 type, u32 lower,
					     u32 node, u32 ref, u32 key)
{
	struct publication *publ;
	struct name_seq *seq = FUNC4(type);

	if (!seq)
		return NULL;

	FUNC0("Withdrawing {%u,%u} from 0x%x\n", type, lower, node);
	publ = FUNC5(seq, lower, node, ref, key);

	if (!seq->first_free && FUNC3(&seq->subscriptions)) {
		FUNC1(&seq->ns_list);
		FUNC2(seq->sseqs);
		FUNC2(seq);
	}
	return publ;
}