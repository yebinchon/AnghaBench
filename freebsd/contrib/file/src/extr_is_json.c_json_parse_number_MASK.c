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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const) ; 

__attribute__((used)) static int
FUNC2(const unsigned char **ucp, const unsigned char *ue)
{
	const unsigned char *uc = *ucp;
	int got = 0;

	FUNC0("Parse number: ", uc, *ucp);
	if (uc == ue)
		return 0;
	if (*uc == '-')
		uc++;

	for (; uc < ue; uc++) {
		if (!FUNC1(*uc))
			break;
		got = 1;
	}
	if (uc == ue)
		goto out;
	if (*uc == '.')
		uc++;
	for (; uc < ue; uc++) {
		if (!FUNC1(*uc))
			break;
		got = 1;
	}
	if (uc == ue)
		goto out;
	if (got && (*uc == 'e' || *uc == 'E')) {
		uc++;
		got = 0;
		if (uc == ue)
			goto out;
		if (*uc == '+' || *uc == '-')
			uc++;
		for (; uc < ue; uc++) {
			if (!FUNC1(*uc))
				break;
			got = 1;
		}
	}
out:
	if (!got)
		FUNC0("Bad number: ", uc, *ucp);
	else
		FUNC0("Good number: ", uc, *ucp);
	*ucp = uc;
	return got;
}