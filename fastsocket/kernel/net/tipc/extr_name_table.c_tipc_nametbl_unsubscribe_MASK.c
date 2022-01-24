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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct subscription {int /*<<< orphan*/  nameseq_list; TYPE_1__ seq; } ;
struct name_seq {scalar_t__ first_free; struct name_seq* sseqs; int /*<<< orphan*/  ns_list; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct name_seq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct name_seq* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct subscription *s)
{
	struct name_seq *seq;

	FUNC7(&tipc_nametbl_lock);
	seq = FUNC4(s->seq.type);
	if (seq != NULL){
		FUNC5(&seq->lock);
		FUNC2(&s->nameseq_list);
		FUNC6(&seq->lock);
		if ((seq->first_free == 0) && FUNC3(&seq->subscriptions)) {
			FUNC0(&seq->ns_list);
			FUNC1(seq->sseqs);
			FUNC1(seq);
		}
	}
	FUNC8(&tipc_nametbl_lock);
}