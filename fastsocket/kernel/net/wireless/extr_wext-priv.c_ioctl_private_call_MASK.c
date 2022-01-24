#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct iwreq {TYPE_1__ u; } ;
struct iw_request_info {int dummy; } ;
struct iw_priv_args {int dummy; } ;
typedef  int (* iw_handler ) (struct net_device*,struct iw_request_info*,TYPE_1__*,char*) ;

/* Variables and functions */
 int EINVAL ; 
 int EIWCOMMIT ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,unsigned int,struct iw_priv_args const**) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,struct iw_priv_args const*,int (*) (struct net_device*,struct iw_request_info*,TYPE_1__*,char*),struct net_device*,struct iw_request_info*,int) ; 

int FUNC3(struct net_device *dev, struct iwreq *iwr,
		       unsigned int cmd, struct iw_request_info *info,
		       iw_handler handler)
{
	int extra_size = 0, ret = -EINVAL;
	const struct iw_priv_args *descr;

	extra_size = FUNC1(dev, cmd, &descr);

	/* Check if we have a pointer to user space data or not. */
	if (extra_size == 0) {
		/* No extra arguments. Trivial to handle */
		ret = handler(dev, info, &(iwr->u), (char *) &(iwr->u));
	} else {
		ret = FUNC2(&iwr->u.data, cmd, descr,
					     handler, dev, info, extra_size);
	}

	/* Call commit handler if needed and defined */
	if (ret == -EIWCOMMIT)
		ret = FUNC0(dev);

	return ret;
}