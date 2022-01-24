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
struct wlp_neighbor_e {int /*<<< orphan*/  node; struct uwb_dev* uwb_dev; } ;
struct wlp {int /*<<< orphan*/  neighbors; } ;
struct uwb_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct wlp_neighbor_e* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlp_neighbor_e*) ; 

__attribute__((used)) static
int FUNC5(struct wlp *wlp, struct uwb_dev *dev)
{
	int result = 0;
	int discoverable;
	struct wlp_neighbor_e *neighbor;

	/*
	 * FIXME:
	 * Use contents of WLP IE found in beacon cache to determine if
	 * neighbor is discoverable.
	 * The device does not support WLP IE yet so this still needs to be
	 * done. Until then we assume all devices are discoverable.
	 */
	discoverable = 1; /* will be changed when FIXME disappears */
	if (discoverable) {
		/* Add neighbor to cache for discovery */
		neighbor = FUNC1(sizeof(*neighbor), GFP_KERNEL);
		if (neighbor == NULL) {
			FUNC0(&dev->dev, "Unable to create memory for "
				"new neighbor. \n");
			result = -ENOMEM;
			goto error_no_mem;
		}
		FUNC4(neighbor);
		FUNC3(dev);
		neighbor->uwb_dev = dev;
		FUNC2(&neighbor->node, &wlp->neighbors);
	}
error_no_mem:
	return result;
}