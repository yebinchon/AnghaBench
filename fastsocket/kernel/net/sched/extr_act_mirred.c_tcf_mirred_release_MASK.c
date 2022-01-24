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
struct tcf_mirred {scalar_t__ tcf_refcnt; int /*<<< orphan*/  common; scalar_t__ tcfm_dev; int /*<<< orphan*/  tcfm_list; int /*<<< orphan*/  tcf_bindcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mirred_hash_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct tcf_mirred *m, int bind)
{
	if (m) {
		if (bind)
			m->tcf_bindcnt--;
		m->tcf_refcnt--;
		if(!m->tcf_bindcnt && m->tcf_refcnt <= 0) {
			FUNC1(&m->tcfm_list);
			if (m->tcfm_dev)
				FUNC0(m->tcfm_dev);
			FUNC2(&m->common, &mirred_hash_info);
			return 1;
		}
	}
	return 0;
}