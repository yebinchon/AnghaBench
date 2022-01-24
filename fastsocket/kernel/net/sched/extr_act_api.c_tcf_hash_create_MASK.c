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
typedef  scalar_t__ u32 ;
struct tcf_hashinfo {int dummy; } ;
struct TYPE_2__ {void* lastuse; void* install; } ;
struct tcf_common {int tcfc_refcnt; int tcfc_bindcnt; int /*<<< orphan*/  tcfc_lock; int /*<<< orphan*/  tcfc_rate_est; int /*<<< orphan*/  tcfc_bstats; TYPE_1__ tcfc_tm; scalar_t__ tcfc_index; } ;
struct tc_action {void* priv; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tcf_common* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_common*) ; 
 struct tcf_common* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__*,struct tcf_hashinfo*) ; 
 scalar_t__ FUNC6 (int) ; 

struct tcf_common *FUNC7(u32 index, struct nlattr *est,
				   struct tc_action *a, int size, int bind,
				   u32 *idx_gen, struct tcf_hashinfo *hinfo)
{
	struct tcf_common *p = FUNC3(size, GFP_KERNEL);

	if (FUNC6(!p))
		return FUNC0(-ENOMEM);
	p->tcfc_refcnt = 1;
	if (bind)
		p->tcfc_bindcnt = 1;

	FUNC4(&p->tcfc_lock);
	p->tcfc_index = index ? index : FUNC5(idx_gen, hinfo);
	p->tcfc_tm.install = jiffies;
	p->tcfc_tm.lastuse = jiffies;
	if (est) {
		int err = FUNC1(&p->tcfc_bstats, &p->tcfc_rate_est,
					    &p->tcfc_lock, est);
		if (err) {
			FUNC2(p);
			return FUNC0(err);
		}
	}

	a->priv = (void *) p;
	return p;
}