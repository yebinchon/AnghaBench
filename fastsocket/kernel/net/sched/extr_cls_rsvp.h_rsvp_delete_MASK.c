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
struct tcf_proto {scalar_t__ root; } ;
struct rsvp_session {struct rsvp_session* next; struct rsvp_filter** ht; } ;
struct rsvp_head {struct rsvp_session** ht; } ;
struct rsvp_filter {unsigned int handle; struct rsvp_filter* next; struct rsvp_session* sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsvp_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,struct rsvp_filter*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*) ; 

__attribute__((used)) static int FUNC4(struct tcf_proto *tp, unsigned long arg)
{
	struct rsvp_filter **fp, *f = (struct rsvp_filter*)arg;
	unsigned h = f->handle;
	struct rsvp_session **sp;
	struct rsvp_session *s = f->sess;
	int i;

	for (fp = &s->ht[(h>>8)&0xFF]; *fp; fp = &(*fp)->next) {
		if (*fp == f) {
			FUNC2(tp);
			*fp = f->next;
			FUNC3(tp);
			FUNC1(tp, f);

			/* Strip tree */

			for (i=0; i<=16; i++)
				if (s->ht[i])
					return 0;

			/* OK, session has no flows */
			for (sp = &((struct rsvp_head*)tp->root)->ht[h&0xFF];
			     *sp; sp = &(*sp)->next) {
				if (*sp == s) {
					FUNC2(tp);
					*sp = s->next;
					FUNC3(tp);

					FUNC0(s);
					return 0;
				}
			}

			return 0;
		}
	}
	return 0;
}