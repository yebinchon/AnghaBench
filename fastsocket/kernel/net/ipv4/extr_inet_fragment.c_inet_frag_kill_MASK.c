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
struct inet_frags {int dummy; } ;
struct inet_frag_queue {int last_in; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int INET_FRAG_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inet_frag_queue*,struct inet_frags*) ; 

void FUNC3(struct inet_frag_queue *fq, struct inet_frags *f)
{
	if (FUNC1(&fq->timer))
		FUNC0(&fq->refcnt);

	if (!(fq->last_in & INET_FRAG_COMPLETE)) {
		FUNC2(fq, f);
		FUNC0(&fq->refcnt);
		fq->last_in |= INET_FRAG_COMPLETE;
	}
}