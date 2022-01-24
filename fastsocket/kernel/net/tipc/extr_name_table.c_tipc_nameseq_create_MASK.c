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
struct sub_seq {int alloc; int /*<<< orphan*/  ns_list; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  first_free; struct sub_seq* sseqs; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; } ;
struct name_seq {int alloc; int /*<<< orphan*/  ns_list; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  first_free; struct name_seq* sseqs; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sub_seq*,int /*<<< orphan*/ ,struct sub_seq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sub_seq*) ; 
 struct sub_seq* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sub_seq* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static struct name_seq *FUNC9(u32 type, struct hlist_head *seq_head)
{
	struct name_seq *nseq = FUNC5(sizeof(*nseq), GFP_ATOMIC);
	struct sub_seq *sseq = FUNC7(1);

	if (!nseq || !sseq) {
		FUNC8("Name sequence creation failed, no memory\n");
		FUNC4(nseq);
		FUNC4(sseq);
		return NULL;
	}

	FUNC6(&nseq->lock);
	nseq->type = type;
	nseq->sseqs = sseq;
	FUNC2("tipc_nameseq_create(): nseq = %p, type %u, ssseqs %p, ff: %u\n",
	    nseq, type, nseq->sseqs, nseq->first_free);
	nseq->alloc = 1;
	FUNC0(&nseq->ns_list);
	FUNC1(&nseq->subscriptions);
	FUNC3(&nseq->ns_list, seq_head);
	return nseq;
}