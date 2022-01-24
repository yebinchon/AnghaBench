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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_conntrack_event_cb ; 
 int /*<<< orphan*/  nf_ct_ecache_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nf_ct_event_notifier* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct nf_ct_event_notifier *new)
{
	struct nf_ct_event_notifier *notify;

	FUNC1(&nf_ct_ecache_mutex);
	notify = FUNC4(nf_conntrack_event_cb);
	FUNC0(notify != new);
	FUNC3(nf_conntrack_event_cb, NULL);
	FUNC2(&nf_ct_ecache_mutex);
}