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
struct ip_options {int /*<<< orphan*/  __data; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ip_options* FUNC0 (int) ; 
 int FUNC1 (struct net*,struct ip_options**,struct ip_options*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC3(struct net *net, struct ip_options **optp,
		   unsigned char *data, int optlen)
{
	struct ip_options *opt = FUNC0(optlen);

	if (!opt)
		return -ENOMEM;
	if (optlen)
		FUNC2(opt->__data, data, optlen);
	return FUNC1(net, optp, opt, optlen);
}