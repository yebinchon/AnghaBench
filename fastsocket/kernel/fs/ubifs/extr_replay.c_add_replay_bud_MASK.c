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
struct ubifs_info {int /*<<< orphan*/  replay_buds; } ;
struct ubifs_bud {int lnum; int start; int jhead; } ;
struct bud_entry {unsigned long long sqnum; int /*<<< orphan*/  list; struct ubifs_bud* bud; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_bud*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_bud*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, int lnum, int offs, int jhead,
			  unsigned long long sqnum)
{
	struct ubifs_bud *bud;
	struct bud_entry *b;

	FUNC0("add replay bud LEB %d:%d, head %d", lnum, offs, jhead);

	bud = FUNC2(sizeof(struct ubifs_bud), GFP_KERNEL);
	if (!bud)
		return -ENOMEM;

	b = FUNC2(sizeof(struct bud_entry), GFP_KERNEL);
	if (!b) {
		FUNC1(bud);
		return -ENOMEM;
	}

	bud->lnum = lnum;
	bud->start = offs;
	bud->jhead = jhead;
	FUNC4(c, bud);

	b->bud = bud;
	b->sqnum = sqnum;
	FUNC3(&b->list, &c->replay_buds);

	return 0;
}