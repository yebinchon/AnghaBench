#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct list_head {int dummy; } ;
struct TYPE_3__ {scalar_t__ nn; } ;
typedef  TYPE_1__ dccp_feat_val ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FEAT_NN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct list_head*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct list_head *fn, u8 feat,
			      u8 mandatory, u64 nn_val)
{
	dccp_feat_val fval = { .nn = nn_val };

	if (FUNC3(feat) != FEAT_NN ||
	    !FUNC1(feat, nn_val))
		return -EINVAL;

	/* Don't bother with default values, they will be activated anyway. */
	if (nn_val - (u64)FUNC0(feat) == 0)
		return 0;

	return FUNC2(fn, feat, 1, mandatory, &fval);
}