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
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_userpolicy_type {int /*<<< orphan*/  type; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 size_t XFRMA_POLICY_TYPE ; 
 int /*<<< orphan*/  XFRM_POLICY_TYPE_MAIN ; 
 struct xfrm_userpolicy_type* FUNC0 (struct nlattr*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u8 *tp, struct nlattr **attrs)
{
	struct nlattr *rt = attrs[XFRMA_POLICY_TYPE];
	struct xfrm_userpolicy_type *upt;
	u8 type = XFRM_POLICY_TYPE_MAIN;
	int err;

	if (rt) {
		upt = FUNC0(rt);
		type = upt->type;
	}

	err = FUNC1(type);
	if (err)
		return err;

	*tp = type;
	return 0;
}