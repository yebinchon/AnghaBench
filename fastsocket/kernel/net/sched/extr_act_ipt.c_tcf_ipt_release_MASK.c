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
struct tcf_ipt {scalar_t__ tcf_bindcnt; scalar_t__ tcf_refcnt; int /*<<< orphan*/  common; int /*<<< orphan*/  tcfi_t; int /*<<< orphan*/  tcfi_tname; } ;

/* Variables and functions */
 int ACT_P_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipt_hash_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tcf_ipt *ipt, int bind)
{
	int ret = 0;
	if (ipt) {
		if (bind)
			ipt->tcf_bindcnt--;
		ipt->tcf_refcnt--;
		if (ipt->tcf_bindcnt <= 0 && ipt->tcf_refcnt <= 0) {
			FUNC0(ipt->tcfi_t);
			FUNC1(ipt->tcfi_tname);
			FUNC1(ipt->tcfi_t);
			FUNC2(&ipt->common, &ipt_hash_info);
			ret = ACT_P_DELETED;
		}
	}
	return ret;
}