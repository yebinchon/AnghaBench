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
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; int /*<<< orphan*/  help; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IP_CT_DIR_REPLY ; 
 struct nf_conntrack_helper* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct nf_conn_help* FUNC2 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conn_help* FUNC3 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_conntrack_helper*) ; 

int FUNC5(struct nf_conn *ct, gfp_t flags)
{
	int ret = 0;
	struct nf_conntrack_helper *helper;
	struct nf_conn_help *help = FUNC3(ct);

	helper = FUNC0(&ct->tuplehash[IP_CT_DIR_REPLY].tuple);
	if (helper == NULL) {
		if (help)
			FUNC4(help->helper, NULL);
		goto out;
	}

	if (help == NULL) {
		help = FUNC2(ct, flags);
		if (help == NULL) {
			ret = -ENOMEM;
			goto out;
		}
	} else {
		FUNC1(&help->help, 0, sizeof(help->help));
	}

	FUNC4(help->helper, helper);
out:
	return ret;
}