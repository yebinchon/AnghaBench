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
struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int /*<<< orphan*/  family; scalar_t__ xfrm_nr; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 size_t XFRMA_TMPL ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_policy*,struct xfrm_user_tmpl*,int) ; 
 struct xfrm_user_tmpl* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 
 int FUNC3 (int,struct xfrm_user_tmpl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xfrm_policy *pol, struct nlattr **attrs)
{
	struct nlattr *rt = attrs[XFRMA_TMPL];

	if (!rt) {
		pol->xfrm_nr = 0;
	} else {
		struct xfrm_user_tmpl *utmpl = FUNC1(rt);
		int nr = FUNC2(rt) / sizeof(*utmpl);
		int err;

		err = FUNC3(nr, utmpl, pol->family);
		if (err)
			return err;

		FUNC0(pol, utmpl, nr);
	}
	return 0;
}