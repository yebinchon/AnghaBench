#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; int /*<<< orphan*/  type; } ;
struct subscription {TYPE_1__ seq; } ;
struct name_seq {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * types; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct name_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct name_seq* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ table ; 
 struct name_seq* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct name_seq*,struct subscription*) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct subscription *s)
{
	u32 type = s->seq.type;
	struct name_seq *seq;

	FUNC8(&tipc_nametbl_lock);
	seq = FUNC2(type);
	if (!seq) {
		seq = FUNC5(type, &table.types[FUNC1(type)]);
	}
	if (seq){
		FUNC3(&seq->lock);
		FUNC0("tipc_nametbl_subscribe:found %p for {%u,%u,%u}\n",
		    seq, type, s->seq.lower, s->seq.upper);
		FUNC6(seq, s);
		FUNC4(&seq->lock);
	} else {
		FUNC7("Failed to create subscription for {%u,%u,%u}\n",
		     s->seq.type, s->seq.lower, s->seq.upper);
	}
	FUNC9(&tipc_nametbl_lock);
}