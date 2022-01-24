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
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  otherend; int /*<<< orphan*/  otherend_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  FUNC0 (struct xenbus_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct xenbus_device *xendev,
				 char *id_node, char *path_node)
{
	int err = FUNC4(XBT_NIL, xendev->nodename,
				id_node, "%i", &xendev->otherend_id,
				path_node, NULL, &xendev->otherend,
				NULL);
	if (err) {
		FUNC2(xendev, err,
				 "reading other end details from %s",
				 xendev->nodename);
		return err;
	}
	if (FUNC1(xendev->otherend) == 0 ||
	    !FUNC3(XBT_NIL, xendev->otherend, "")) {
		FUNC2(xendev, -ENOENT,
				 "unable to read other end from %s.  "
				 "missing or inaccessible.",
				 xendev->nodename);
		FUNC0(xendev);
		return -ENOENT;
	}

	return 0;
}