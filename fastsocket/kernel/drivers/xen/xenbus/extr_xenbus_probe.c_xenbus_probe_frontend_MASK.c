#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ xenbus_frontend ; 
 int FUNC3 (TYPE_1__*,char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *type, const char *name)
{
	char *nodename;
	int err;

	nodename = FUNC1(GFP_KERNEL, "%s/%s/%s",
			     xenbus_frontend.root, type, name);
	if (!nodename)
		return -ENOMEM;

	FUNC0("%s", nodename);

	err = FUNC3(&xenbus_frontend, type, nodename);
	FUNC2(nodename);
	return err;
}