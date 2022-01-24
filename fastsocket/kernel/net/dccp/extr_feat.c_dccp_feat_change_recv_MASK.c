#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct list_head {int dummy; } ;
struct dccp_feat_entry {scalar_t__ state; int empty_confirm; int needs_confirm; scalar_t__ needs_mandatory; int /*<<< orphan*/  val; } ;
struct TYPE_5__ {scalar_t__* vec; } ;
struct TYPE_6__ {TYPE_1__ sp; int /*<<< orphan*/  nn; } ;
typedef  TYPE_2__ dccp_feat_val ;

/* Variables and functions */
 scalar_t__ DCCPF_CCID ; 
 scalar_t__ DCCPO_CHANGE_R ; 
 scalar_t__ DCCP_RESET_CODE_MANDATORY_ERROR ; 
 scalar_t__ DCCP_RESET_CODE_OPTION_ERROR ; 
 scalar_t__ DCCP_RESET_CODE_TOO_BUSY ; 
 scalar_t__ FEAT_INITIALISING ; 
 scalar_t__ FEAT_NN ; 
 scalar_t__ FEAT_STABLE ; 
 scalar_t__ FEAT_UNKNOWN ; 
 scalar_t__ FEAT_UNSTABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 struct dccp_feat_entry* FUNC7 (struct list_head*,scalar_t__,int const) ; 
 int FUNC8 (scalar_t__*,int,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct list_head*,scalar_t__,int const,TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__*,int,int const,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (struct list_head*,scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 

__attribute__((used)) static u8 FUNC15(struct list_head *fn, u8 is_mandatory, u8 opt,
				u8 feat, u8 *val, u8 len, const bool server)
{
	u8 defval, type = FUNC12(feat);
	const bool local = (opt == DCCPO_CHANGE_R);
	struct dccp_feat_entry *entry;
	dccp_feat_val fval;

	if (len == 0 || type == FEAT_UNKNOWN)		/* 6.1 and 6.6.8 */
		goto unknown_feature_or_value;

	FUNC9(opt, feat, val, len, is_mandatory);

	/*
	 *	Negotiation of NN features: Change R is invalid, so there is no
	 *	simultaneous negotiation; hence we do not look up in the list.
	 */
	if (type == FEAT_NN) {
		if (local || len > sizeof(fval.nn))
			goto unknown_feature_or_value;

		/* 6.3.2: "The feature remote MUST accept any valid value..." */
		fval.nn = FUNC2(val, len);
		if (!FUNC5(feat, fval.nn))
			goto unknown_feature_or_value;

		return FUNC10(fn, feat, local, &fval);
	}

	/*
	 *	Unidirectional/simultaneous negotiation of SP features (6.3.1)
	 */
	entry = FUNC7(fn, feat, local);
	if (entry == NULL) {
		/*
		 * No particular preferences have been registered. We deal with
		 * this situation by assuming that all valid values are equally
		 * acceptable, and apply the following checks:
		 * - if the peer's list is a singleton, we accept a valid value;
		 * - if we are the server, we first try to see if the peer (the
		 *   client) advertises the default value. If yes, we use it,
		 *   otherwise we accept the preferred value;
		 * - else if we are the client, we use the first list element.
		 */
		if (FUNC3(&fval, val, 1))
			return DCCP_RESET_CODE_TOO_BUSY;

		if (len > 1 && server) {
			defval = FUNC4(feat);
			if (FUNC8(&defval, 1, val, len) > -1)
				fval.sp.vec[0] = defval;
		} else if (!FUNC6(feat, fval.sp.vec[0])) {
			FUNC14(fval.sp.vec);
			goto unknown_feature_or_value;
		}

		/* Treat unsupported CCIDs like invalid values */
		if (feat == DCCPF_CCID && !FUNC1(fval.sp.vec, 1)) {
			FUNC14(fval.sp.vec);
			goto not_valid_or_not_known;
		}

		return FUNC10(fn, feat, local, &fval);

	} else if (entry->state == FEAT_UNSTABLE) {	/* 6.6.2 */
		return 0;
	}

	if (FUNC11(&entry->val, val, len, server, true)) {
		entry->empty_confirm = 0;
	} else if (is_mandatory) {
		return DCCP_RESET_CODE_MANDATORY_ERROR;
	} else if (entry->state == FEAT_INITIALISING) {
		/*
		 * Failed simultaneous negotiation (server only): try to `save'
		 * the connection by checking whether entry contains the default
		 * value for @feat. If yes, send an empty Confirm to signal that
		 * the received Change was not understood - which implies using
		 * the default value.
		 * If this also fails, we use Reset as the last resort.
		 */
		FUNC0(!server);
		defval = FUNC4(feat);
		if (!FUNC11(&entry->val, &defval, 1, server, true))
			return DCCP_RESET_CODE_OPTION_ERROR;
		entry->empty_confirm = 1;
	}
	entry->needs_confirm   = 1;
	entry->needs_mandatory = 0;
	entry->state	       = FEAT_STABLE;
	return 0;

unknown_feature_or_value:
	if (!is_mandatory)
		return FUNC13(fn, feat, local);

not_valid_or_not_known:
	return is_mandatory ? DCCP_RESET_CODE_MANDATORY_ERROR
			    : DCCP_RESET_CODE_OPTION_ERROR;
}