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
struct net {int dummy; } ;
struct ip_options {int optlen; int /*<<< orphan*/ * __data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPOPT_END ; 
 scalar_t__ FUNC0 (struct net*,struct ip_options*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_options*) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct ip_options **optp,
				 struct ip_options *opt, int optlen)
{
	while (optlen & 3)
		opt->__data[optlen++] = IPOPT_END;
	opt->optlen = optlen;
	if (optlen && FUNC0(net, opt, NULL)) {
		FUNC1(opt);
		return -EINVAL;
	}
	FUNC1(*optp);
	*optp = opt;
	return 0;
}