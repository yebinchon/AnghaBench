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
typedef  int /*<<< orphan*/  u32 ;
struct dlm_protocol_version {int dummy; } ;
struct dlm_ctxt {scalar_t__ dlm_state; struct dlm_protocol_version fs_locking_proto; int /*<<< orphan*/  dlm_locking_proto; int /*<<< orphan*/  list; int /*<<< orphan*/  num_joins; } ;

/* Variables and functions */
 scalar_t__ DLM_CTXT_JOINED ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int EPROTO ; 
 int ERESTARTSYS ; 
 struct dlm_ctxt* FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ O2NM_MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*) ; 
 struct dlm_ctxt* FUNC2 (char const*) ; 
 int /*<<< orphan*/  current ; 
 struct dlm_ctxt* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dlm_domain_events ; 
 int /*<<< orphan*/  dlm_domain_lock ; 
 int /*<<< orphan*/  dlm_domains ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int FUNC5 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  dlm_protocol ; 
 scalar_t__ FUNC6 (struct dlm_protocol_version*,struct dlm_protocol_version*) ; 
 int /*<<< orphan*/  FUNC7 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dlm_ctxt * FUNC18(const char *domain,
			       u32 key,
			       struct dlm_protocol_version *fs_proto)
{
	int ret;
	struct dlm_ctxt *dlm = NULL;
	struct dlm_ctxt *new_ctxt = NULL;

	if (FUNC16(domain) > O2NM_MAX_NAME_LEN) {
		ret = -ENAMETOOLONG;
		FUNC10(ML_ERROR, "domain name length too long\n");
		goto leave;
	}

	if (!FUNC12()) {
		FUNC10(ML_ERROR, "the local node has not been configured, or is "
		     "not heartbeating\n");
		ret = -EPROTO;
		goto leave;
	}

	FUNC10(0, "register called for domain \"%s\"\n", domain);

retry:
	dlm = NULL;
	if (FUNC13(current)) {
		ret = -ERESTARTSYS;
		FUNC11(ret);
		goto leave;
	}

	FUNC14(&dlm_domain_lock);

	dlm = FUNC2(domain);
	if (dlm) {
		if (dlm->dlm_state != DLM_CTXT_JOINED) {
			FUNC15(&dlm_domain_lock);

			FUNC10(0, "This ctxt is not joined yet!\n");
			FUNC17(dlm_domain_events,
						 FUNC8(
							 domain));
			goto retry;
		}

		if (FUNC6(&dlm->fs_locking_proto, fs_proto)) {
			FUNC10(ML_ERROR,
			     "Requested locking protocol version is not "
			     "compatible with already registered domain "
			     "\"%s\"\n", domain);
			ret = -EPROTO;
			goto leave;
		}

		FUNC1(dlm);
		dlm->num_joins++;

		FUNC15(&dlm_domain_lock);

		ret = 0;
		goto leave;
	}

	/* doesn't exist */
	if (!new_ctxt) {
		FUNC15(&dlm_domain_lock);

		new_ctxt = FUNC3(domain, key);
		if (new_ctxt)
			goto retry;

		ret = -ENOMEM;
		FUNC11(ret);
		goto leave;
	}

	/* a little variable switch-a-roo here... */
	dlm = new_ctxt;
	new_ctxt = NULL;

	/* add the new domain */
	FUNC9(&dlm->list, &dlm_domains);
	FUNC15(&dlm_domain_lock);

	/*
	 * Pass the locking protocol version into the join.  If the join
	 * succeeds, it will have the negotiated protocol set.
	 */
	dlm->dlm_locking_proto = dlm_protocol;
	dlm->fs_locking_proto = *fs_proto;

	ret = FUNC5(dlm);
	if (ret) {
		FUNC11(ret);
		FUNC7(dlm);
		goto leave;
	}

	/* Tell the caller what locking protocol we negotiated */
	*fs_proto = dlm->fs_locking_proto;

	ret = 0;
leave:
	if (new_ctxt)
		FUNC4(new_ctxt);

	if (ret < 0)
		dlm = FUNC0(ret);

	return dlm;
}