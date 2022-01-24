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
typedef  scalar_t__ u8 ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  dccp_feat_val ;

/* Variables and functions */
 scalar_t__ DCCPF_CCID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FEAT_SP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__ const*,scalar_t__) ; 
 int FUNC2 (struct list_head*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__ const*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct list_head *fn, u8 feat, u8 is_local,
			      u8 mandatory, u8 const *sp_val, u8 sp_len)
{
	dccp_feat_val fval;

	if (FUNC4(feat) != FEAT_SP ||
	    !FUNC3(feat, sp_val, sp_len))
		return -EINVAL;

	/* Avoid negotiating alien CCIDs by only advertising supported ones */
	if (feat == DCCPF_CCID && !FUNC0(sp_val, sp_len))
		return -EOPNOTSUPP;

	if (FUNC1(&fval, sp_val, sp_len))
		return -ENOMEM;

	return FUNC2(fn, feat, is_local, mandatory, &fval);
}