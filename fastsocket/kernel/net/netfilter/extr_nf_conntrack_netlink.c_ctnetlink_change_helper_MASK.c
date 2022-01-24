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
struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {struct nf_conntrack_helper* helper; int /*<<< orphan*/  help; } ;
struct nf_conn {scalar_t__ master; } ;

/* Variables and functions */
 size_t CTA_HELP ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct nf_conntrack_helper* FUNC0 (char*) ; 
 int FUNC1 (struct nlattr const* const,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nf_conntrack_lock ; 
 struct nf_conn_help* FUNC3 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conntrack_helper*,struct nf_conntrack_helper*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static inline int
FUNC11(struct nf_conn *ct, const struct nlattr * const cda[])
{
	struct nf_conntrack_helper *helper;
	struct nf_conn_help *help = FUNC5(ct);
	char *helpname = NULL;
	int err;

	/* don't change helper of sibling connections */
	if (ct->master)
		return -EBUSY;

	err = FUNC1(cda[CTA_HELP], &helpname);
	if (err < 0)
		return err;

	if (!FUNC10(helpname, "")) {
		if (help && help->helper) {
			/* we had a helper before ... */
			FUNC4(ct);
			FUNC6(help->helper, NULL);
		}

		return 0;
	}

	helper = FUNC0(helpname);
	if (helper == NULL) {
#ifdef CONFIG_MODULES
		spin_unlock_bh(&nf_conntrack_lock);

		if (request_module("nfct-helper-%s", helpname) < 0) {
			spin_lock_bh(&nf_conntrack_lock);
			return -EOPNOTSUPP;
		}

		spin_lock_bh(&nf_conntrack_lock);
		helper = __nf_conntrack_helper_find_byname(helpname);
		if (helper)
			return -EAGAIN;
#endif
		return -EOPNOTSUPP;
	}

	if (help) {
		if (help->helper == helper)
			return 0;
		if (help->helper)
			return -EBUSY;
		/* need to zero data of old helper */
		FUNC2(&help->help, 0, sizeof(help->help));
	} else {
		help = FUNC3(ct, GFP_ATOMIC);
		if (help == NULL)
			return -ENOMEM;
	}

	FUNC6(help->helper, helper);

	return 0;
}