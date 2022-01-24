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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tmap ;
struct rsvp_session {struct rsvp_filter** ht; struct rsvp_session* next; } ;
struct rsvp_head {int /*<<< orphan*/  tmap; int /*<<< orphan*/  tgenerator; struct rsvp_session** ht; } ;
struct TYPE_2__ {int /*<<< orphan*/  classid; } ;
struct rsvp_filter {scalar_t__ tunnelhdr; TYPE_1__ res; struct rsvp_filter* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsvp_head*) ; 

__attribute__((used)) static void FUNC3(struct rsvp_head *data)
{
	struct rsvp_session **sht = data->ht;
	u32 tmap[256/32];
	int h1, h2;

	FUNC1(tmap, 0, sizeof(tmap));

	for (h1=0; h1<256; h1++) {
		struct rsvp_session *s;
		for (s = sht[h1]; s; s = s->next) {
			for (h2=0; h2<=16; h2++) {
				struct rsvp_filter *f;

				for (f = s->ht[h2]; f; f = f->next) {
					if (f->tunnelhdr == 0)
						continue;
					data->tgenerator = f->res.classid;
					FUNC2(data);
				}
			}
		}
	}

	FUNC0(data->tmap, tmap, sizeof(tmap));
}