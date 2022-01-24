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
struct sk_buff {struct sk_buff* next; } ;
struct netns_frags {int /*<<< orphan*/  mem; } ;
struct inet_frags {int /*<<< orphan*/  (* destructor ) (struct inet_frag_queue*) ;scalar_t__ qsize; } ;
struct inet_frag_queue {int last_in; struct netns_frags* net; struct sk_buff* fragments; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int INET_FRAG_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct netns_frags*,struct inet_frags*,struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_frag_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet_frag_queue*) ; 

void FUNC6(struct inet_frag_queue *q, struct inet_frags *f,
					int *work)
{
	struct sk_buff *fp;
	struct netns_frags *nf;

	FUNC0(!(q->last_in & INET_FRAG_COMPLETE));
	FUNC0(FUNC2(&q->timer) != 0);

	/* Release all fragment data. */
	fp = q->fragments;
	nf = q->net;
	while (fp) {
		struct sk_buff *xp = fp->next;

		FUNC3(nf, f, fp, work);
		fp = xp;
	}

	if (work)
		*work -= f->qsize;
	FUNC1(f->qsize, &nf->mem);

	if (f->destructor)
		f->destructor(q);
	FUNC4(q);

}