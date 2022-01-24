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
struct nf_conn {int /*<<< orphan*/  status; } ;
struct __nf_ct_flush_report {int /*<<< orphan*/  report; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_DESTROY ; 
 int /*<<< orphan*/  IPS_DYING_BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nf_conn *i, void *data)
{
	struct __nf_ct_flush_report *fr = (struct __nf_ct_flush_report *)data;

	/* If we fail to deliver the event, death_by_timeout() will retry */
	if (FUNC0(IPCT_DESTROY, i,
				      fr->pid, fr->report) < 0)
		return 1;

	/* Avoid the delivery of the destroy event in death_by_timeout(). */
	FUNC1(IPS_DYING_BIT, &i->status);
	return 1;
}