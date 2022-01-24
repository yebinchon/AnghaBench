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
struct netns_frags {int /*<<< orphan*/  mem; } ;
struct inet_frags {int /*<<< orphan*/  frag_expire; int /*<<< orphan*/  qsize; int /*<<< orphan*/  (* constructor ) (struct inet_frag_queue*,void*) ;} ;
struct inet_frag_queue {struct netns_frags* net; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct inet_frag_queue* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inet_frag_queue*,void*) ; 

__attribute__((used)) static struct inet_frag_queue *FUNC6(struct netns_frags *nf,
		struct inet_frags *f, void *arg)
{
	struct inet_frag_queue *q;

	q = FUNC2(f->qsize, GFP_ATOMIC);
	if (q == NULL)
		return NULL;

	f->constructor(q, arg);
	FUNC0(f->qsize, &nf->mem);
	FUNC3(&q->timer, f->frag_expire, (unsigned long)q);
	FUNC4(&q->lock);
	FUNC1(&q->refcnt, 1);
	q->net = nf;

	return q;
}