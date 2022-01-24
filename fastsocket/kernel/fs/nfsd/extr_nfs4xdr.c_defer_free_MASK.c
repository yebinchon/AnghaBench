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
struct tmpbuf {void (* release ) (void const*) ;struct tmpbuf* next; void* buf; } ;
struct nfsd4_compoundargs {struct tmpbuf* to_free; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tmpbuf* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct nfsd4_compoundargs *argp,
		void (*release)(const void *), void *p)
{
	struct tmpbuf *tb;

	tb = FUNC0(sizeof(*tb), GFP_KERNEL);
	if (!tb)
		return -ENOMEM;
	tb->buf = p;
	tb->release = release;
	tb->next = argp->to_free;
	argp->to_free = tb;
	return 0;
}