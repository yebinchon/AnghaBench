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
struct xenbus_driver {int /*<<< orphan*/  read_otherend_details; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  read_backend_details ; 
 int /*<<< orphan*/  FUNC0 (struct xenbus_driver*) ; 
 int /*<<< orphan*/  xenbus_frontend ; 
 int FUNC1 (struct xenbus_driver*,int /*<<< orphan*/ *,struct module*,char const*) ; 

int FUNC2(struct xenbus_driver *drv,
			       struct module *owner, const char *mod_name)
{
	int ret;

	drv->read_otherend_details = read_backend_details;

	ret = FUNC1(drv, &xenbus_frontend,
					    owner, mod_name);
	if (ret)
		return ret;

	/* If this driver is loaded as a module wait for devices to attach. */
	FUNC0(drv);

	return 0;
}