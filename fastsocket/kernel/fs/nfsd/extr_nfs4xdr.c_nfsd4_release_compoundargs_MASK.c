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
struct tmpbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ ) ;struct tmpbuf* next; } ;
struct nfsd4_compoundargs {scalar_t__ ops; scalar_t__ iops; struct tmpbuf* to_free; struct tmpbuf* tmpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tmpbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct nfsd4_compoundargs *args)
{
	if (args->ops != args->iops) {
		FUNC0(args->ops);
		args->ops = args->iops;
	}
	FUNC0(args->tmpp);
	args->tmpp = NULL;
	while (args->to_free) {
		struct tmpbuf *tb = args->to_free;
		args->to_free = tb->next;
		tb->release(tb->buf);
		FUNC0(tb);
	}
}