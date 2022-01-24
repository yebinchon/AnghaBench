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
struct rt6_info {int dummy; } ;

/* Variables and functions */
 int RT6_LOOKUP_F_REACHABLE ; 
 int RT6_NUD_FAIL_DO_RR ; 
 int RT6_NUD_FAIL_HARD ; 
 scalar_t__ FUNC0 (struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt6_info*) ; 
 int FUNC2 (struct rt6_info*,int,int) ; 

__attribute__((used)) static struct rt6_info *FUNC3(struct rt6_info *rt, int oif, int strict,
				   int *mpri, struct rt6_info *match,
				   bool *do_rr)
{
	int m;
	bool match_do_rr = false;

	if (FUNC0(rt))
		goto out;

	m = FUNC2(rt, oif, strict);
	if (m == RT6_NUD_FAIL_DO_RR) {
		match_do_rr = true;
		m = 0; /* lowest valid score */
	} else if (m == RT6_NUD_FAIL_HARD) {
		goto out;
	}

	if (strict & RT6_LOOKUP_F_REACHABLE)
		FUNC1(rt);

	/* note that m can be RT6_NUD_FAIL_PROBE at this point */
	if (m > *mpri) {
		*do_rr = match_do_rr;
		*mpri = m;
		match = rt;
	}
out:
	return match;
}