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
struct sw_flow_actions {int dummy; } ;
struct nlattr {int nla_type; int nla_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct nlattr* FUNC7 (struct sw_flow_actions**,int) ; 

__attribute__((used)) static int FUNC8(struct sw_flow_actions **sfa, int attrtype, void *data, int len)
{
	struct nlattr *a;

	a = FUNC7(sfa, FUNC4(len));
	if (FUNC0(a))
		return FUNC1(a);

	a->nla_type = attrtype;
	a->nla_len = FUNC4(len);

	if (data)
		FUNC2(FUNC5(a), data, len);
	FUNC3((unsigned char *) a + a->nla_len, 0, FUNC6(len));

	return 0;
}