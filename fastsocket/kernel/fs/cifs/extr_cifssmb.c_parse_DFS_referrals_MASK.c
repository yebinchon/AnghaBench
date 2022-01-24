#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nls_table {int dummy; } ;
struct dfs_referral_level_3 {scalar_t__ VersionNumber; scalar_t__ ServerType; scalar_t__ ReferralEntryFlags; scalar_t__ DfsPathOffset; scalar_t__ NetworkAddressOffset; } ;
struct dfs_info3_param {int path_consumed; int server_type; int ref_flag; void* node_name; void* path_name; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {scalar_t__ DataCount; } ;
struct TYPE_5__ {int Flags2; } ;
struct TYPE_7__ {scalar_t__ NumberOfReferrals; scalar_t__ PathConsumed; int /*<<< orphan*/  DFSFlags; TYPE_2__ t2; int /*<<< orphan*/  referrals; TYPE_1__ hdr; } ;
typedef  TYPE_3__ TRANSACTION2_GET_DFS_REFER_RSP ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int SMBFLG2_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*,int) ; 
 void* FUNC3 (char*,int,int,struct nls_table const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,struct nls_table const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct dfs_info3_param*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct dfs_info3_param* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*) ; 

__attribute__((used)) static int
FUNC13(TRANSACTION2_GET_DFS_REFER_RSP *pSMBr,
		unsigned int *num_of_nodes,
		struct dfs_info3_param **target_nodes,
		const struct nls_table *nls_codepage, int remap,
		const char *searchName)
{
	int i, rc = 0;
	char *data_end;
	bool is_unicode;
	struct dfs_referral_level_3 *ref;

	if (pSMBr->hdr.Flags2 & SMBFLG2_UNICODE)
		is_unicode = true;
	else
		is_unicode = false;
	*num_of_nodes = FUNC10(pSMBr->NumberOfReferrals);

	if (*num_of_nodes < 1) {
		FUNC0(1, "num_referrals: must be at least > 0,"
			"but we get num_referrals = %d\n", *num_of_nodes);
		rc = -EINVAL;
		goto parse_DFS_referrals_exit;
	}

	ref = (struct dfs_referral_level_3 *) &(pSMBr->referrals);
	if (ref->VersionNumber != FUNC5(3)) {
		FUNC0(1, "Referrals of V%d version are not supported,"
			"should be V3", FUNC10(ref->VersionNumber));
		rc = -EINVAL;
		goto parse_DFS_referrals_exit;
	}

	/* get the upper boundary of the resp buffer */
	data_end = (char *)(&(pSMBr->PathConsumed)) +
				FUNC10(pSMBr->t2.DataCount);

	FUNC1(1, "num_referrals: %d dfs flags: 0x%x ...\n",
			*num_of_nodes,
			FUNC11(pSMBr->DFSFlags));

	*target_nodes = FUNC9(sizeof(struct dfs_info3_param) *
			*num_of_nodes, GFP_KERNEL);
	if (*target_nodes == NULL) {
		FUNC0(1, "Failed to allocate buffer for target_nodes\n");
		rc = -ENOMEM;
		goto parse_DFS_referrals_exit;
	}

	/* collect neccessary data from referrals */
	for (i = 0; i < *num_of_nodes; i++) {
		char *temp;
		int max_len;
		struct dfs_info3_param *node = (*target_nodes)+i;

		node->flags = FUNC11(pSMBr->DFSFlags);
		if (is_unicode) {
			__le16 *tmp = FUNC8(FUNC12(searchName)*2 + 2,
						GFP_KERNEL);
			if (tmp == NULL) {
				rc = -ENOMEM;
				goto parse_DFS_referrals_exit;
			}
			FUNC2((__le16 *) tmp, searchName,
					PATH_MAX, nls_codepage, remap);
			node->path_consumed = FUNC4(tmp,
					FUNC10(pSMBr->PathConsumed),
					nls_codepage);
			FUNC7(tmp);
		} else
			node->path_consumed = FUNC10(pSMBr->PathConsumed);

		node->server_type = FUNC10(ref->ServerType);
		node->ref_flag = FUNC10(ref->ReferralEntryFlags);

		/* copy DfsPath */
		temp = (char *)ref + FUNC10(ref->DfsPathOffset);
		max_len = data_end - temp;
		node->path_name = FUNC3(temp, max_len,
						      is_unicode, nls_codepage);
		if (!node->path_name) {
			rc = -ENOMEM;
			goto parse_DFS_referrals_exit;
		}

		/* copy link target UNC */
		temp = (char *)ref + FUNC10(ref->NetworkAddressOffset);
		max_len = data_end - temp;
		node->node_name = FUNC3(temp, max_len,
						      is_unicode, nls_codepage);
		if (!node->node_name)
			rc = -ENOMEM;
	}

parse_DFS_referrals_exit:
	if (rc) {
		FUNC6(*target_nodes, *num_of_nodes);
		*target_nodes = NULL;
		*num_of_nodes = 0;
	}
	return rc;
}