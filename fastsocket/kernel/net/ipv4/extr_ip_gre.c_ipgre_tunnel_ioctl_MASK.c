#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int version; scalar_t__ protocol; int ihl; int frag_off; } ;
struct ip_tunnel_parm {int i_flags; int o_flags; TYPE_1__ iph; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {TYPE_2__ ifr_ifru; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int GRE_ROUTING ; 
 int GRE_VERSION ; 
 scalar_t__ IPPROTO_GRE ; 
 int /*<<< orphan*/  IP_DF ; 
 int SIOCADDTUNNEL ; 
 int SIOCCHGTUNNEL ; 
 scalar_t__ FUNC0 (struct ip_tunnel_parm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ip_tunnel_parm*,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,struct ip_tunnel_parm*,int) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			      struct ifreq *ifr, int cmd)
{
	int err = 0;
	struct ip_tunnel_parm p;

	if (FUNC0(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
		return -EFAULT;
	if (cmd == SIOCADDTUNNEL || cmd == SIOCCHGTUNNEL) {
		if (p.iph.version != 4 || p.iph.protocol != IPPROTO_GRE ||
		    p.iph.ihl != 5 || (p.iph.frag_off&FUNC3(~IP_DF)) ||
		    ((p.i_flags|p.o_flags)&(GRE_VERSION|GRE_ROUTING)))
			return -EINVAL;
	}
	p.i_flags = FUNC2(p.i_flags);
	p.o_flags = FUNC2(p.o_flags);

	err = FUNC4(dev, &p, cmd);
	if (err)
		return err;

	p.i_flags = FUNC5(p.i_flags);
	p.o_flags = FUNC5(p.o_flags);

	if (FUNC1(ifr->ifr_ifru.ifru_data, &p, sizeof(p)))
		return -EFAULT;
	return 0;
}