#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_bridge_port {TYPE_1__* br; scalar_t__ dev; } ;
struct kobject {int dummy; } ;
struct brport_attribute {size_t (* store ) (struct net_bridge_port*,unsigned long) ;} ;
struct attribute {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct net_bridge_port*,unsigned long) ; 
 struct net_bridge_port* FUNC8 (struct kobject*) ; 
 struct brport_attribute* FUNC9 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct kobject * kobj,
			    struct attribute * attr,
			    const char * buf, size_t count)
{
	struct brport_attribute * brport_attr = FUNC9(attr);
	struct net_bridge_port * p = FUNC8(kobj);
	ssize_t ret = -EINVAL;
	char *endp;
	unsigned long val;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	val = FUNC4(buf, &endp, 0);
	if (endp != buf) {
		if (!FUNC2())
			return FUNC1();
		if (p->dev && p->br && brport_attr->store) {
			FUNC5(&p->br->lock);
			ret = brport_attr->store(p, val);
			FUNC6(&p->br->lock);
			if (ret == 0)
				ret = count;
		}
		FUNC3();
	}
	return ret;
}