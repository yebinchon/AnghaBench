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
struct nf_ct_event_notifier {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_event_cb ; 
 int /*<<< orphan*/  nf_ct_ecache_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nf_ct_event_notifier*) ; 
 struct nf_ct_event_notifier* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct nf_ct_event_notifier *new)
{
	int ret = 0;
	struct nf_ct_event_notifier *notify;

	FUNC0(&nf_ct_ecache_mutex);
	notify = FUNC3(nf_conntrack_event_cb);
	if (notify != NULL) {
		ret = -EBUSY;
		goto out_unlock;
	}
	FUNC2(nf_conntrack_event_cb, new);
	FUNC1(&nf_ct_ecache_mutex);
	return ret;

out_unlock:
	FUNC1(&nf_ct_ecache_mutex);
	return ret;
}