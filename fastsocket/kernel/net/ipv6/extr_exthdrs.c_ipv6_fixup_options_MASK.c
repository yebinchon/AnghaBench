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
struct ipv6_txoptions {int /*<<< orphan*/ * dst0opt; int /*<<< orphan*/  opt_nflen; int /*<<< orphan*/  srcrt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipv6_txoptions*,struct ipv6_txoptions*,int) ; 

struct ipv6_txoptions *FUNC2(struct ipv6_txoptions *opt_space,
					  struct ipv6_txoptions *opt)
{
	/*
	 * ignore the dest before srcrt unless srcrt is being included.
	 * --yoshfuji
	 */
	if (opt && opt->dst0opt && !opt->srcrt) {
		if (opt_space != opt) {
			FUNC1(opt_space, opt, sizeof(*opt_space));
			opt = opt_space;
		}
		opt->opt_nflen -= FUNC0(opt->dst0opt);
		opt->dst0opt = NULL;
	}

	return opt;
}