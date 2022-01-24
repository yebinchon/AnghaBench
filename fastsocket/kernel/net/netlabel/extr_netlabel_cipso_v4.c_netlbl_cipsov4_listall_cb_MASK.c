#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlbl_cipsov4_doiwalk_arg {int /*<<< orphan*/  skb; int /*<<< orphan*/  seq; TYPE_1__* nl_cb; } ;
struct cipso_v4_doi {int /*<<< orphan*/  type; int /*<<< orphan*/  doi; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;
struct TYPE_3__ {int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_DOI ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MTYPE ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_C_LISTALL ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlbl_cipsov4_gnl_family ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cipso_v4_doi *doi_def, void *arg)
{
	int ret_val = -ENOMEM;
	struct netlbl_cipsov4_doiwalk_arg *cb_arg = arg;
	void *data;

	data = FUNC3(cb_arg->skb, FUNC0(cb_arg->nl_cb->skb).pid,
			   cb_arg->seq, &netlbl_cipsov4_gnl_family,
			   NLM_F_MULTI, NLBL_CIPSOV4_C_LISTALL);
	if (data == NULL)
		goto listall_cb_failure;

	ret_val = FUNC4(cb_arg->skb, NLBL_CIPSOV4_A_DOI, doi_def->doi);
	if (ret_val != 0)
		goto listall_cb_failure;
	ret_val = FUNC4(cb_arg->skb,
			      NLBL_CIPSOV4_A_MTYPE,
			      doi_def->type);
	if (ret_val != 0)
		goto listall_cb_failure;

	return FUNC2(cb_arg->skb, data);

listall_cb_failure:
	FUNC1(cb_arg->skb, data);
	return ret_val;
}