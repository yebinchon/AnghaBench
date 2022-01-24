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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct rsvp_session {struct rsvp_session* next; struct rsvp_session** ht; } ;
struct rsvp_head {struct rsvp_head* next; struct rsvp_head** ht; } ;
struct rsvp_filter {struct rsvp_filter* next; struct rsvp_filter** ht; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsvp_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_proto*,struct rsvp_session*) ; 
 struct rsvp_session* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct tcf_proto *tp)
{
	struct rsvp_head *data = FUNC2(&tp->root, NULL);
	struct rsvp_session **sht;
	int h1, h2;

	if (data == NULL)
		return;

	sht = data->ht;

	for (h1=0; h1<256; h1++) {
		struct rsvp_session *s;

		while ((s = sht[h1]) != NULL) {
			sht[h1] = s->next;

			for (h2=0; h2<=16; h2++) {
				struct rsvp_filter *f;

				while ((f = s->ht[h2]) != NULL) {
					s->ht[h2] = f->next;
					FUNC1(tp, f);
				}
			}
			FUNC0(s);
		}
	}
	FUNC0(data);
}