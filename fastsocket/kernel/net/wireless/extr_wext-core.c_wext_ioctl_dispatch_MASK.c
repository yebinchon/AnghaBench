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
typedef  int /*<<< orphan*/  wext_ioctl_func ;
struct net {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (struct net*,struct ifreq*,unsigned int,struct iw_request_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net *net, struct ifreq *ifr,
			       unsigned int cmd, struct iw_request_info *info,
			       wext_ioctl_func standard,
			       wext_ioctl_func private)
{
	int ret = FUNC3(cmd);

	if (ret)
		return ret;

	FUNC0(net, ifr->ifr_name);
	FUNC1();
	ret = FUNC4(net, ifr, cmd, info, standard, private);
	FUNC2();

	return ret;
}