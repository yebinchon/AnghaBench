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
struct usb_host_endpoint {struct c67x00_ep_data* hcpriv; } ;
struct c67x00_ep_data {int /*<<< orphan*/  node; int /*<<< orphan*/  queue; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct c67x00_ep_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_host_endpoint *hep)
{
	struct c67x00_ep_data *ep_data = hep->hcpriv;

	if (!ep_data)
		return 0;

	if (!FUNC2(&ep_data->queue))
		return -EBUSY;

	FUNC3(ep_data->dev);
	FUNC1(&ep_data->queue);
	FUNC1(&ep_data->node);

	FUNC0(ep_data);
	hep->hcpriv = NULL;

	return 0;
}